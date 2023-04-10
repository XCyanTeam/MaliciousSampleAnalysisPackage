.class Lc/a/b/a/i$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/a/b/a/l$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/a/b/a/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lc/a/b/a/i;


# direct methods
.method constructor <init>(Lc/a/b/a/i;)V
    .locals 0

    iput-object p1, p0, Lc/a/b/a/i$a;->a:Lc/a/b/a/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public a(Lio/flutter/embedding/engine/a;)V
    .locals 2

    iget-object p1, p0, Lc/a/b/a/i$a;->a:Lc/a/b/a/i;

    invoke-static {p1}, Lc/a/b/a/i;->a(Lc/a/b/a/i;)Lc/a/b/a/l;

    move-result-object p1

    invoke-virtual {p1, p0}, Lc/a/b/a/l;->b(Lc/a/b/a/l$d;)V

    iget-object p1, p0, Lc/a/b/a/i$a;->a:Lc/a/b/a/i;

    invoke-static {p1}, Lc/a/b/a/i;->a(Lc/a/b/a/i;)Lc/a/b/a/l;

    move-result-object v0

    iget-object v1, p0, Lc/a/b/a/i$a;->a:Lc/a/b/a/i;

    invoke-static {v1}, Lc/a/b/a/i;->b(Lc/a/b/a/i;)Lc/a/b/a/n;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lc/a/b/a/i;->a(Lc/a/b/a/l;Lc/a/b/a/n;)V

    return-void
.end method
