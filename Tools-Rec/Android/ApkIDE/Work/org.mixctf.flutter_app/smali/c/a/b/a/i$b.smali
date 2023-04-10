.class Lc/a/b/a/i$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lio/flutter/embedding/engine/h/b;


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

    iput-object p1, p0, Lc/a/b/a/i$b;->a:Lc/a/b/a/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lc/a/b/a/i$b;->a:Lc/a/b/a/i;

    invoke-static {v0}, Lc/a/b/a/i;->b(Lc/a/b/a/i;)Lc/a/b/a/n;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc/a/b/a/i$b;->a:Lc/a/b/a/i;

    invoke-static {v0}, Lc/a/b/a/i;->c(Lc/a/b/a/i;)V

    :cond_0
    return-void
.end method

.method public b()V
    .locals 0

    return-void
.end method
