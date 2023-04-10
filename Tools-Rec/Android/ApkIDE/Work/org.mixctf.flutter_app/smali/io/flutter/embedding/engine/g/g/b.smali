.class Lio/flutter/embedding/engine/g/g/b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/a/c/a/k$c;
.implements Lio/flutter/embedding/engine/g/a;
.implements Lio/flutter/embedding/engine/g/c/a;


# instance fields
.field private final a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lc/a/c/a/k$f;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lc/a/c/a/k$d;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lc/a/c/a/k$a;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lc/a/c/a/k$b;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lc/a/c/a/k$e;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lio/flutter/embedding/engine/g/a$b;

.field private g:Lio/flutter/embedding/engine/g/c/c;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lio/flutter/embedding/engine/g/g/b;->a:Ljava/util/Set;

    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lio/flutter/embedding/engine/g/g/b;->b:Ljava/util/Set;

    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lio/flutter/embedding/engine/g/g/b;->c:Ljava/util/Set;

    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lio/flutter/embedding/engine/g/g/b;->d:Ljava/util/Set;

    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lio/flutter/embedding/engine/g/g/b;->e:Ljava/util/Set;

    return-void
.end method

.method private e()V
    .locals 3

    iget-object v0, p0, Lio/flutter/embedding/engine/g/g/b;->b:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc/a/c/a/k$d;

    iget-object v2, p0, Lio/flutter/embedding/engine/g/g/b;->g:Lio/flutter/embedding/engine/g/c/c;

    invoke-interface {v2, v1}, Lio/flutter/embedding/engine/g/c/c;->a(Lc/a/c/a/k$d;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lio/flutter/embedding/engine/g/g/b;->c:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc/a/c/a/k$a;

    iget-object v2, p0, Lio/flutter/embedding/engine/g/g/b;->g:Lio/flutter/embedding/engine/g/c/c;

    invoke-interface {v2, v1}, Lio/flutter/embedding/engine/g/c/c;->a(Lc/a/c/a/k$a;)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lio/flutter/embedding/engine/g/g/b;->d:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc/a/c/a/k$b;

    iget-object v2, p0, Lio/flutter/embedding/engine/g/g/b;->g:Lio/flutter/embedding/engine/g/c/c;

    invoke-interface {v2, v1}, Lio/flutter/embedding/engine/g/c/c;->a(Lc/a/c/a/k$b;)V

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lio/flutter/embedding/engine/g/g/b;->e:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc/a/c/a/k$e;

    iget-object v2, p0, Lio/flutter/embedding/engine/g/g/b;->g:Lio/flutter/embedding/engine/g/c/c;

    invoke-interface {v2, v1}, Lio/flutter/embedding/engine/g/c/c;->a(Lc/a/c/a/k$e;)V

    goto :goto_3

    :cond_3
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    const-string v0, "ShimRegistrar"

    const-string v1, "Detached from an Activity."

    invoke-static {v0, v1}, Lc/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lio/flutter/embedding/engine/g/g/b;->g:Lio/flutter/embedding/engine/g/c/c;

    return-void
.end method

.method public a(Lio/flutter/embedding/engine/g/a$b;)V
    .locals 2

    const-string p1, "ShimRegistrar"

    const-string v0, "Detached from FlutterEngine."

    invoke-static {p1, v0}, Lc/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lio/flutter/embedding/engine/g/g/b;->a:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/a/c/a/k$f;

    invoke-interface {v0, v1}, Lc/a/c/a/k$f;->a(Lio/flutter/view/e;)Z

    goto :goto_0

    :cond_0
    iput-object v1, p0, Lio/flutter/embedding/engine/g/g/b;->f:Lio/flutter/embedding/engine/g/a$b;

    iput-object v1, p0, Lio/flutter/embedding/engine/g/g/b;->g:Lio/flutter/embedding/engine/g/c/c;

    return-void
.end method

.method public a(Lio/flutter/embedding/engine/g/c/c;)V
    .locals 2

    const-string v0, "ShimRegistrar"

    const-string v1, "Attached to an Activity."

    invoke-static {v0, v1}, Lc/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lio/flutter/embedding/engine/g/g/b;->g:Lio/flutter/embedding/engine/g/c/c;

    invoke-direct {p0}, Lio/flutter/embedding/engine/g/g/b;->e()V

    return-void
.end method

.method public b()V
    .locals 2

    const-string v0, "ShimRegistrar"

    const-string v1, "Detached from an Activity for config changes."

    invoke-static {v0, v1}, Lc/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lio/flutter/embedding/engine/g/g/b;->g:Lio/flutter/embedding/engine/g/c/c;

    return-void
.end method

.method public b(Lio/flutter/embedding/engine/g/a$b;)V
    .locals 2

    const-string v0, "ShimRegistrar"

    const-string v1, "Attached to FlutterEngine."

    invoke-static {v0, v1}, Lc/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lio/flutter/embedding/engine/g/g/b;->f:Lio/flutter/embedding/engine/g/a$b;

    return-void
.end method

.method public b(Lio/flutter/embedding/engine/g/c/c;)V
    .locals 2

    const-string v0, "ShimRegistrar"

    const-string v1, "Reconnected to an Activity after config changes."

    invoke-static {v0, v1}, Lc/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lio/flutter/embedding/engine/g/g/b;->g:Lio/flutter/embedding/engine/g/c/c;

    invoke-direct {p0}, Lio/flutter/embedding/engine/g/g/b;->e()V

    return-void
.end method

.method public c()Lc/a/c/a/b;
    .locals 1

    iget-object v0, p0, Lio/flutter/embedding/engine/g/g/b;->f:Lio/flutter/embedding/engine/g/a$b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lio/flutter/embedding/engine/g/a$b;->b()Lc/a/c/a/b;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public d()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lio/flutter/embedding/engine/g/g/b;->f:Lio/flutter/embedding/engine/g/a$b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lio/flutter/embedding/engine/g/a$b;->a()Landroid/content/Context;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method
