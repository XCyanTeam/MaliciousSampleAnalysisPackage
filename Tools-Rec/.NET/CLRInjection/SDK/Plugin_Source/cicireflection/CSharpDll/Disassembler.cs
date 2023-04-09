using System;
using System.Collections.Generic;
using System.Text;
using System.Reflection.Emit;
using System.Collections;

namespace CSharpDll
{
    public class Disassembler
    {
        public static string Decode(byte[] ILdata, int startindex, out int length)
        {
            length = 0;
            System.UInt16 HighByte = (System.UInt16)ILdata[startindex++];
            System.UInt16 LowByte = 0;
            if (HighByte == 0xFE)
            {
                LowByte = (System.UInt16)ILdata[startindex++];
                HighByte <<= 8;
            }
            System.UInt16 opcode = (System.UInt16)(HighByte | LowByte);

            foreach (OpCode o in OpCodeList)
            {
                UInt16 t = (UInt16)o.Value;
                if (t == opcode)
                {
                    length = o.Size + OperandLength(o.OperandType);
                    return o.Name;
                }
            }
            length = 1;
            return String.Format("UNK {0:X}", opcode);

        }

        public static int OperandLength(OperandType ot)
        {
            switch (ot)
            {
                case OperandType.InlineBrTarget: return 4;
                case OperandType.InlineField: return 4;
                case OperandType.InlineI: return 4;
                case OperandType.InlineI8: return 8;
                case OperandType.InlineMethod: return 4;
                case OperandType.InlineNone: return 0;
                case OperandType.InlineR: return 8;
                case OperandType.InlineSig: return 4;
                case OperandType.InlineString: return 4;
                case OperandType.InlineSwitch: return 4;
                case OperandType.InlineTok: return 4;
                case OperandType.InlineType: return 4;
                case OperandType.InlineVar: return 2;
                case OperandType.ShortInlineBrTarget: return 1;
                case OperandType.ShortInlineI: return 1;
                case OperandType.ShortInlineR: return 4;
                case OperandType.ShortInlineVar: return 1;
                default: return 0;
            }
           // return 0;
        }


        static OpCode[] OpCodeList = {
                OpCodes.Add,
                OpCodes.Add_Ovf,
                OpCodes.Add_Ovf_Un,
                OpCodes.And,
                OpCodes.Arglist,
                OpCodes.Beq,
                OpCodes.Beq_S,
                OpCodes.Bge,
                OpCodes.Bge_S,
                OpCodes.Bge_Un,
                OpCodes.Bge_Un_S,
                OpCodes.Bgt,
                OpCodes.Bgt_S,
                OpCodes.Bgt_Un,
                OpCodes.Bgt_Un_S,
                OpCodes.Ble,
                OpCodes.Ble_S,
                OpCodes.Ble_Un,
                OpCodes.Ble_Un_S,
                OpCodes.Blt,
                OpCodes.Blt_S,
                OpCodes.Blt_Un,
                OpCodes.Blt_Un_S,
                OpCodes.Bne_Un,
                OpCodes.Bne_Un_S,
                OpCodes.Box,
                OpCodes.Br,
                OpCodes.Br_S,
                OpCodes.Break,
                OpCodes.Brfalse,
                OpCodes.Brfalse_S,
                OpCodes.Brtrue,
                OpCodes.Brtrue_S,
                OpCodes.Call,
                OpCodes.Calli,
                OpCodes.Callvirt,
                OpCodes.Castclass,
                OpCodes.Ceq,
                OpCodes.Cgt,
                OpCodes.Cgt_Un,
                OpCodes.Ckfinite,
                OpCodes.Clt,
                OpCodes.Clt_Un,
                OpCodes.Constrained,
                OpCodes.Conv_I,
                OpCodes.Conv_I1,
                OpCodes.Conv_I2,
                OpCodes.Conv_I4,
                OpCodes.Conv_I8,
                OpCodes.Conv_Ovf_I,
                OpCodes.Conv_Ovf_I_Un,
                OpCodes.Conv_Ovf_I1,
                OpCodes.Conv_Ovf_I1_Un,
                OpCodes.Conv_Ovf_I2,
                OpCodes.Conv_Ovf_I2_Un,
                OpCodes.Conv_Ovf_I4,
                OpCodes.Conv_Ovf_I4_Un,
                OpCodes.Conv_Ovf_I8,
                OpCodes.Conv_Ovf_I8_Un,
                OpCodes.Conv_Ovf_U,
                OpCodes.Conv_Ovf_U_Un,
                OpCodes.Conv_Ovf_U1,
                OpCodes.Conv_Ovf_U1_Un,
                OpCodes.Conv_Ovf_U2,
                OpCodes.Conv_Ovf_U2_Un,
                OpCodes.Conv_Ovf_U4,
                OpCodes.Conv_Ovf_U4_Un,
                OpCodes.Conv_Ovf_U8,
                OpCodes.Conv_Ovf_U8_Un,
                OpCodes.Conv_R_Un,
                OpCodes.Conv_R4,
                OpCodes.Conv_R8,
                OpCodes.Conv_U,
                OpCodes.Conv_U1,
                OpCodes.Conv_U2,
                OpCodes.Conv_U4,
                OpCodes.Conv_U8,
                OpCodes.Cpblk,
                OpCodes.Cpobj,
                OpCodes.Div,
                OpCodes.Div_Un,
                OpCodes.Dup,
                OpCodes.Endfilter,
                OpCodes.Endfinally,
                OpCodes.Initblk,
                OpCodes.Initobj,
                OpCodes.Isinst,
                OpCodes.Jmp,
                OpCodes.Ldarg,
                OpCodes.Ldarg_0,
                OpCodes.Ldarg_1,
                OpCodes.Ldarg_2,
                OpCodes.Ldarg_3,
                OpCodes.Ldarg_S,
                OpCodes.Ldarga,
                OpCodes.Ldarga_S,
                OpCodes.Ldc_I4,
                OpCodes.Ldc_I4_0,
                OpCodes.Ldc_I4_1,
                OpCodes.Ldc_I4_2,
                OpCodes.Ldc_I4_3,
                OpCodes.Ldc_I4_4,
                OpCodes.Ldc_I4_5,
                OpCodes.Ldc_I4_6,
                OpCodes.Ldc_I4_7,
                OpCodes.Ldc_I4_8,
                OpCodes.Ldc_I4_M1,
                OpCodes.Ldc_I4_S,
                OpCodes.Ldc_I8,
                OpCodes.Ldc_R4,
                OpCodes.Ldc_R8,
                OpCodes.Ldelem,
                OpCodes.Ldelem_I,
                OpCodes.Ldelem_I1,
                OpCodes.Ldelem_I2,
                OpCodes.Ldelem_I4,
                OpCodes.Ldelem_I8,
                OpCodes.Ldelem_R4,
                OpCodes.Ldelem_R8,
                OpCodes.Ldelem_Ref,
                OpCodes.Ldelem_U1,
                OpCodes.Ldelem_U2,
                OpCodes.Ldelem_U4,
                OpCodes.Ldelema,
                OpCodes.Ldfld,
                OpCodes.Ldflda,
                OpCodes.Ldftn,
                OpCodes.Ldind_I,
                OpCodes.Ldind_I1,
                OpCodes.Ldind_I2,
                OpCodes.Ldind_I4,
                OpCodes.Ldind_I8,
                OpCodes.Ldind_R4,
                OpCodes.Ldind_R8,
                OpCodes.Ldind_Ref,
                OpCodes.Ldind_U1,
                OpCodes.Ldind_U2,
                OpCodes.Ldind_U4,
                OpCodes.Ldlen,
                OpCodes.Ldloc,
                OpCodes.Ldloc_0,
                OpCodes.Ldloc_1,
                OpCodes.Ldloc_2,
                OpCodes.Ldloc_3,
                OpCodes.Ldloc_S,
                OpCodes.Ldloca,
                OpCodes.Ldloca_S,
                OpCodes.Ldnull,
                OpCodes.Ldobj,
                OpCodes.Ldsfld,
                OpCodes.Ldsflda,
                OpCodes.Ldstr,
                OpCodes.Ldtoken,
                OpCodes.Ldvirtftn,
                OpCodes.Leave,
                OpCodes.Leave_S,
                OpCodes.Localloc,
                OpCodes.Mkrefany,
                OpCodes.Mul,
                OpCodes.Mul_Ovf,
                OpCodes.Mul_Ovf_Un,
                OpCodes.Neg,
                OpCodes.Newarr,
                OpCodes.Newobj,
                OpCodes.Nop,
                OpCodes.Not,
                OpCodes.Or,
                OpCodes.Pop,
                OpCodes.Prefix1,
                OpCodes.Prefix2,
                OpCodes.Prefix3,
                OpCodes.Prefix4,
                OpCodes.Prefix5,
                OpCodes.Prefix6,
                OpCodes.Prefix7,
                OpCodes.Prefixref,
                OpCodes.Readonly,
                OpCodes.Refanytype,
                OpCodes.Refanyval,
                OpCodes.Rem,
                OpCodes.Rem_Un,
                OpCodes.Ret,
                OpCodes.Rethrow,
                OpCodes.Shl,
                OpCodes.Shr,
                OpCodes.Shr_Un,
                OpCodes.Sizeof,
                OpCodes.Starg,
                OpCodes.Starg_S,
                OpCodes.Stelem,
                OpCodes.Stelem_I,
                OpCodes.Stelem_I1,
                OpCodes.Stelem_I2,
                OpCodes.Stelem_I4,
                OpCodes.Stelem_I8,
                OpCodes.Stelem_R4,
                OpCodes.Stelem_R8,
                OpCodes.Stelem_Ref,
                OpCodes.Stfld,
                OpCodes.Stind_I,
                OpCodes.Stind_I1,
                OpCodes.Stind_I2,
                OpCodes.Stind_I4,
                OpCodes.Stind_I8,
                OpCodes.Stind_R4,
                OpCodes.Stind_R8,
                OpCodes.Stind_Ref,
                OpCodes.Stloc,
                OpCodes.Stloc_0,
                OpCodes.Stloc_1,
                OpCodes.Stloc_2,
                OpCodes.Stloc_3,
                OpCodes.Stloc_S,
                OpCodes.Stobj,
                OpCodes.Stsfld,
                OpCodes.Sub,
                OpCodes.Sub_Ovf,
                OpCodes.Sub_Ovf_Un,
                OpCodes.Switch,
                OpCodes.Tailcall,
                OpCodes.Throw,
                OpCodes.Unaligned,
                OpCodes.Unbox,
                OpCodes.Unbox_Any,
                OpCodes.Volatile,
                OpCodes.Xor
        };
    }
}
