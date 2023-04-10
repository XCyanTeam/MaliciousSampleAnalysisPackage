.class public Lb/b/a/f/e;
.super Lb/b/a/f/a;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb/b/a/f/e$a;
    }
.end annotation


# instance fields
.field final a:Lc/a/c/a/h;

.field final b:Lb/b/a/f/e$a;


# direct methods
.method public constructor <init>(Lc/a/c/a/h;Lc/a/c/a/i$d;)V
    .locals 0

    invoke-direct {p0}, Lb/b/a/f/a;-><init>()V

    iput-object p1, p0, Lb/b/a/f/e;->a:Lc/a/c/a/h;

    new-instance p1, Lb/b/a/f/e$a;

    invoke-direct {p1, p0, p2}, Lb/b/a/f/e$a;-><init>(Lb/b/a/f/e;Lc/a/c/a/i$d;)V

    iput-object p1, p0, Lb/b/a/f/e;->b:Lb/b/a/f/e$a;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    iget-object v0, p0, Lb/b/a/f/e;->a:Lc/a/c/a/h;

    invoke-virtual {v0, p1}, Lc/a/c/a/h;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public e()Lb/b/a/f/g;
    .locals 1

    iget-object v0, p0, Lb/b/a/f/e;->b:Lb/b/a/f/e$a;

    return-object v0
.end method
