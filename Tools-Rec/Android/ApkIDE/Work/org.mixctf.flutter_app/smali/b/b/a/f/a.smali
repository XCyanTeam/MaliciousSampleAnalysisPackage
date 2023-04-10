.class public abstract Lb/b/a/f/a;
.super Lb/b/a/f/b;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lb/b/a/f/b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 1

    invoke-virtual {p0}, Lb/b/a/f/a;->e()Lb/b/a/f/g;

    move-result-object v0

    invoke-interface {v0, p1}, Lb/b/a/f/g;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    invoke-virtual {p0}, Lb/b/a/f/a;->e()Lb/b/a/f/g;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lb/b/a/f/g;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method protected abstract e()Lb/b/a/f/g;
.end method
