.class Lc/a/b/a/l$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lio/flutter/embedding/engine/h/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/a/b/a/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lc/a/b/a/l;


# direct methods
.method constructor <init>(Lc/a/b/a/l;)V
    .locals 0

    iput-object p1, p0, Lc/a/b/a/l$b;->a:Lc/a/b/a/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lc/a/b/a/l$b;->a:Lc/a/b/a/l;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lc/a/b/a/l;->a(Lc/a/b/a/l;Z)Z

    iget-object v0, p0, Lc/a/b/a/l$b;->a:Lc/a/b/a/l;

    invoke-static {v0}, Lc/a/b/a/l;->a(Lc/a/b/a/l;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/flutter/embedding/engine/h/b;

    invoke-interface {v1}, Lio/flutter/embedding/engine/h/b;->a()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public b()V
    .locals 2

    iget-object v0, p0, Lc/a/b/a/l$b;->a:Lc/a/b/a/l;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lc/a/b/a/l;->a(Lc/a/b/a/l;Z)Z

    iget-object v0, p0, Lc/a/b/a/l$b;->a:Lc/a/b/a/l;

    invoke-static {v0}, Lc/a/b/a/l;->a(Lc/a/b/a/l;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/flutter/embedding/engine/h/b;

    invoke-interface {v1}, Lio/flutter/embedding/engine/h/b;->b()V

    goto :goto_0

    :cond_0
    return-void
.end method
