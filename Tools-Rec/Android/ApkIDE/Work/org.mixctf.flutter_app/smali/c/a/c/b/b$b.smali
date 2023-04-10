.class Lc/a/c/b/b$b;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/a/c/b/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/a/c/b/b$b$a;
    }
.end annotation


# instance fields
.field a:Lc/a/c/b/b$b$a;

.field b:I


# direct methods
.method public constructor <init>(Lc/a/c/b/b$b$a;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc/a/c/b/b$b;->a:Lc/a/c/b/b$b$a;

    iput p2, p0, Lc/a/c/b/b$b;->b:I

    return-void
.end method
