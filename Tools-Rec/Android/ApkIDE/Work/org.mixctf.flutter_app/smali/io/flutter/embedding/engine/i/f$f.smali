.class public final enum Lio/flutter/embedding/engine/i/f$f;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/flutter/embedding/engine/i/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "f"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/flutter/embedding/engine/i/f$f;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum b:Lio/flutter/embedding/engine/i/f$f;

.field public static final enum c:Lio/flutter/embedding/engine/i/f$f;

.field public static final enum d:Lio/flutter/embedding/engine/i/f$f;

.field public static final enum e:Lio/flutter/embedding/engine/i/f$f;

.field private static final synthetic f:[Lio/flutter/embedding/engine/i/f$f;


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lio/flutter/embedding/engine/i/f$f;

    const/4 v1, 0x0

    const-string v2, "PORTRAIT_UP"

    const-string v3, "DeviceOrientation.portraitUp"

    invoke-direct {v0, v2, v1, v3}, Lio/flutter/embedding/engine/i/f$f;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lio/flutter/embedding/engine/i/f$f;->b:Lio/flutter/embedding/engine/i/f$f;

    new-instance v0, Lio/flutter/embedding/engine/i/f$f;

    const/4 v2, 0x1

    const-string v3, "PORTRAIT_DOWN"

    const-string v4, "DeviceOrientation.portraitDown"

    invoke-direct {v0, v3, v2, v4}, Lio/flutter/embedding/engine/i/f$f;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lio/flutter/embedding/engine/i/f$f;->c:Lio/flutter/embedding/engine/i/f$f;

    new-instance v0, Lio/flutter/embedding/engine/i/f$f;

    const/4 v3, 0x2

    const-string v4, "LANDSCAPE_LEFT"

    const-string v5, "DeviceOrientation.landscapeLeft"

    invoke-direct {v0, v4, v3, v5}, Lio/flutter/embedding/engine/i/f$f;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lio/flutter/embedding/engine/i/f$f;->d:Lio/flutter/embedding/engine/i/f$f;

    new-instance v0, Lio/flutter/embedding/engine/i/f$f;

    const/4 v4, 0x3

    const-string v5, "LANDSCAPE_RIGHT"

    const-string v6, "DeviceOrientation.landscapeRight"

    invoke-direct {v0, v5, v4, v6}, Lio/flutter/embedding/engine/i/f$f;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lio/flutter/embedding/engine/i/f$f;->e:Lio/flutter/embedding/engine/i/f$f;

    const/4 v0, 0x4

    new-array v0, v0, [Lio/flutter/embedding/engine/i/f$f;

    sget-object v5, Lio/flutter/embedding/engine/i/f$f;->b:Lio/flutter/embedding/engine/i/f$f;

    aput-object v5, v0, v1

    sget-object v1, Lio/flutter/embedding/engine/i/f$f;->c:Lio/flutter/embedding/engine/i/f$f;

    aput-object v1, v0, v2

    sget-object v1, Lio/flutter/embedding/engine/i/f$f;->d:Lio/flutter/embedding/engine/i/f$f;

    aput-object v1, v0, v3

    sget-object v1, Lio/flutter/embedding/engine/i/f$f;->e:Lio/flutter/embedding/engine/i/f$f;

    aput-object v1, v0, v4

    sput-object v0, Lio/flutter/embedding/engine/i/f$f;->f:[Lio/flutter/embedding/engine/i/f$f;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lio/flutter/embedding/engine/i/f$f;->a:Ljava/lang/String;

    return-void
.end method

.method static a(Ljava/lang/String;)Lio/flutter/embedding/engine/i/f$f;
    .locals 5

    invoke-static {}, Lio/flutter/embedding/engine/i/f$f;->values()[Lio/flutter/embedding/engine/i/f$f;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    iget-object v4, v3, Lio/flutter/embedding/engine/i/f$f;->a:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/NoSuchFieldException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No such DeviceOrientation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NoSuchFieldException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lio/flutter/embedding/engine/i/f$f;
    .locals 1

    const-class v0, Lio/flutter/embedding/engine/i/f$f;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/flutter/embedding/engine/i/f$f;

    return-object p0
.end method

.method public static values()[Lio/flutter/embedding/engine/i/f$f;
    .locals 1

    sget-object v0, Lio/flutter/embedding/engine/i/f$f;->f:[Lio/flutter/embedding/engine/i/f$f;

    invoke-virtual {v0}, [Lio/flutter/embedding/engine/i/f$f;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/flutter/embedding/engine/i/f$f;

    return-object v0
.end method
