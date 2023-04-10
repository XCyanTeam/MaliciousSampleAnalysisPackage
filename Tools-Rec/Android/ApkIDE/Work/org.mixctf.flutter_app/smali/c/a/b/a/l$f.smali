.class public final enum Lc/a/b/a/l$f;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/a/b/a/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "f"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lc/a/b/a/l$f;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lc/a/b/a/l$f;

.field public static final enum b:Lc/a/b/a/l$f;

.field private static final synthetic c:[Lc/a/b/a/l$f;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lc/a/b/a/l$f;

    const/4 v1, 0x0

    const-string v2, "opaque"

    invoke-direct {v0, v2, v1}, Lc/a/b/a/l$f;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lc/a/b/a/l$f;->a:Lc/a/b/a/l$f;

    new-instance v0, Lc/a/b/a/l$f;

    const/4 v2, 0x1

    const-string v3, "transparent"

    invoke-direct {v0, v3, v2}, Lc/a/b/a/l$f;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lc/a/b/a/l$f;->b:Lc/a/b/a/l$f;

    const/4 v0, 0x2

    new-array v0, v0, [Lc/a/b/a/l$f;

    sget-object v3, Lc/a/b/a/l$f;->a:Lc/a/b/a/l$f;

    aput-object v3, v0, v1

    sget-object v1, Lc/a/b/a/l$f;->b:Lc/a/b/a/l$f;

    aput-object v1, v0, v2

    sput-object v0, Lc/a/b/a/l$f;->c:[Lc/a/b/a/l$f;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lc/a/b/a/l$f;
    .locals 1

    const-class v0, Lc/a/b/a/l$f;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lc/a/b/a/l$f;

    return-object p0
.end method

.method public static values()[Lc/a/b/a/l$f;
    .locals 1

    sget-object v0, Lc/a/b/a/l$f;->c:[Lc/a/b/a/l$f;

    invoke-virtual {v0}, [Lc/a/b/a/l$f;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lc/a/b/a/l$f;

    return-object v0
.end method
