.class final enum Lc/a/c/b/b$b$a;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/a/c/b/b$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lc/a/c/b/b$b$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lc/a/c/b/b$b$a;

.field public static final enum b:Lc/a/c/b/b$b$a;

.field public static final enum c:Lc/a/c/b/b$b$a;

.field private static final synthetic d:[Lc/a/c/b/b$b$a;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lc/a/c/b/b$b$a;

    const/4 v1, 0x0

    const-string v2, "NO_TARGET"

    invoke-direct {v0, v2, v1}, Lc/a/c/b/b$b$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lc/a/c/b/b$b$a;->a:Lc/a/c/b/b$b$a;

    new-instance v0, Lc/a/c/b/b$b$a;

    const/4 v2, 0x1

    const-string v3, "FRAMEWORK_CLIENT"

    invoke-direct {v0, v3, v2}, Lc/a/c/b/b$b$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lc/a/c/b/b$b$a;->b:Lc/a/c/b/b$b$a;

    new-instance v0, Lc/a/c/b/b$b$a;

    const/4 v3, 0x2

    const-string v4, "PLATFORM_VIEW"

    invoke-direct {v0, v4, v3}, Lc/a/c/b/b$b$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lc/a/c/b/b$b$a;->c:Lc/a/c/b/b$b$a;

    const/4 v0, 0x3

    new-array v0, v0, [Lc/a/c/b/b$b$a;

    sget-object v4, Lc/a/c/b/b$b$a;->a:Lc/a/c/b/b$b$a;

    aput-object v4, v0, v1

    sget-object v1, Lc/a/c/b/b$b$a;->b:Lc/a/c/b/b$b$a;

    aput-object v1, v0, v2

    sget-object v1, Lc/a/c/b/b$b$a;->c:Lc/a/c/b/b$b$a;

    aput-object v1, v0, v3

    sput-object v0, Lc/a/c/b/b$b$a;->d:[Lc/a/c/b/b$b$a;

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

.method public static valueOf(Ljava/lang/String;)Lc/a/c/b/b$b$a;
    .locals 1

    const-class v0, Lc/a/c/b/b$b$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lc/a/c/b/b$b$a;

    return-object p0
.end method

.method public static values()[Lc/a/c/b/b$b$a;
    .locals 1

    sget-object v0, Lc/a/c/b/b$b$a;->d:[Lc/a/c/b/b$b$a;

    invoke-virtual {v0}, [Lc/a/c/b/b$b$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lc/a/c/b/b$b$a;

    return-object v0
.end method
