.class public Lb/b/a/f/d;
.super Lb/b/a/f/b;
.source ""


# instance fields
.field private final a:Lb/b/a/d;

.field private final b:Lc/a/c/a/i$d;

.field private final c:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>(Lc/a/c/a/i$d;Lb/b/a/d;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0}, Lb/b/a/f/b;-><init>()V

    iput-object p1, p0, Lb/b/a/f/d;->b:Lc/a/c/a/i$d;

    iput-object p2, p0, Lb/b/a/f/d;->a:Lb/b/a/d;

    iput-object p3, p0, Lb/b/a/f/d;->c:Ljava/lang/Boolean;

    return-void
.end method


# virtual methods
.method public a()Lb/b/a/d;
    .locals 1

    iget-object v0, p0, Lb/b/a/f/d;->a:Lb/b/a/d;

    return-object v0
.end method

.method public a(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public a(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lb/b/a/f/d;->b:Lc/a/c/a/i$d;

    invoke-interface {v0, p1}, Lc/a/c/a/i$d;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lb/b/a/f/d;->b:Lc/a/c/a/i$d;

    invoke-interface {v0, p1, p2, p3}, Lc/a/c/a/i$d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public c()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lb/b/a/f/d;->c:Ljava/lang/Boolean;

    return-object v0
.end method
