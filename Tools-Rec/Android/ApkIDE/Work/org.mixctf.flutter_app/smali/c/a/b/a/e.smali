.class final Lc/a/b/a/e;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/a/b/a/e$c;
    }
.end annotation


# instance fields
.field private a:Lc/a/b/a/e$c;

.field private b:Lio/flutter/embedding/engine/a;

.field private c:Lc/a/b/a/i;

.field private d:Lc/a/b/a/l;

.field private e:Lio/flutter/plugin/platform/c;

.field private f:Z

.field private final g:Lio/flutter/embedding/engine/h/b;


# direct methods
.method constructor <init>(Lc/a/b/a/e$c;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lc/a/b/a/e$a;

    invoke-direct {v0, p0}, Lc/a/b/a/e$a;-><init>(Lc/a/b/a/e;)V

    iput-object v0, p0, Lc/a/b/a/e;->g:Lio/flutter/embedding/engine/h/b;

    iput-object p1, p0, Lc/a/b/a/e;->a:Lc/a/b/a/e$c;

    return-void
.end method

.method static synthetic a(Lc/a/b/a/e;)Lc/a/b/a/e$c;
    .locals 0

    iget-object p0, p0, Lc/a/b/a/e;->a:Lc/a/b/a/e$c;

    return-object p0
.end method

.method static synthetic b(Lc/a/b/a/e;)Lio/flutter/embedding/engine/a;
    .locals 0

    iget-object p0, p0, Lc/a/b/a/e;->b:Lio/flutter/embedding/engine/a;

    return-object p0
.end method

.method static synthetic c(Lc/a/b/a/e;)Lc/a/b/a/l;
    .locals 0

    iget-object p0, p0, Lc/a/b/a/e;->d:Lc/a/b/a/l;

    return-object p0
.end method

.method static synthetic d(Lc/a/b/a/e;)V
    .locals 0

    invoke-direct {p0}, Lc/a/b/a/e;->l()V

    return-void
.end method

.method private l()V
    .locals 3

    iget-object v0, p0, Lc/a/b/a/e;->a:Lc/a/b/a/e$c;

    invoke-interface {v0}, Lc/a/b/a/e$c;->h()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lc/a/b/a/e;->b:Lio/flutter/embedding/engine/a;

    invoke-virtual {v0}, Lio/flutter/embedding/engine/a;->d()Lio/flutter/embedding/engine/e/a;

    move-result-object v0

    invoke-virtual {v0}, Lio/flutter/embedding/engine/e/a;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Executing Dart entrypoint: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lc/a/b/a/e;->a:Lc/a/b/a/e$c;

    invoke-interface {v1}, Lc/a/b/a/e$c;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", and sending initial route: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lc/a/b/a/e;->a:Lc/a/b/a/e$c;

    invoke-interface {v1}, Lc/a/b/a/e$c;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FlutterActivityAndFragmentDelegate"

    invoke-static {v1, v0}, Lc/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lc/a/b/a/e;->a:Lc/a/b/a/e$c;

    invoke-interface {v0}, Lc/a/b/a/e$c;->e()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lc/a/b/a/e;->b:Lio/flutter/embedding/engine/a;

    invoke-virtual {v0}, Lio/flutter/embedding/engine/a;->h()Lio/flutter/embedding/engine/i/e;

    move-result-object v0

    iget-object v1, p0, Lc/a/b/a/e;->a:Lc/a/b/a/e$c;

    invoke-interface {v1}, Lc/a/b/a/e$c;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/flutter/embedding/engine/i/e;->a(Ljava/lang/String;)V

    :cond_2
    new-instance v0, Lio/flutter/embedding/engine/e/a$b;

    iget-object v1, p0, Lc/a/b/a/e;->a:Lc/a/b/a/e$c;

    invoke-interface {v1}, Lc/a/b/a/e$c;->i()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lc/a/b/a/e;->a:Lc/a/b/a/e$c;

    invoke-interface {v2}, Lc/a/b/a/e$c;->j()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lio/flutter/embedding/engine/e/a$b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lc/a/b/a/e;->b:Lio/flutter/embedding/engine/a;

    invoke-virtual {v1}, Lio/flutter/embedding/engine/a;->d()Lio/flutter/embedding/engine/e/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lio/flutter/embedding/engine/e/a;->a(Lio/flutter/embedding/engine/e/a$b;)V

    return-void
.end method

.method private m()V
    .locals 2

    iget-object v0, p0, Lc/a/b/a/e;->a:Lc/a/b/a/e$c;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot execute method on a destroyed FlutterActivityAndFragmentDelegate."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const-string p1, "FlutterActivityAndFragmentDelegate"

    const-string p2, "Creating FlutterView."

    invoke-static {p1, p2}, Lc/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lc/a/b/a/e;->m()V

    new-instance p1, Lc/a/b/a/l;

    iget-object p2, p0, Lc/a/b/a/e;->a:Lc/a/b/a/e$c;

    invoke-interface {p2}, Lc/a/b/a/e$c;->d()Landroid/app/Activity;

    move-result-object p2

    iget-object p3, p0, Lc/a/b/a/e;->a:Lc/a/b/a/e$c;

    invoke-interface {p3}, Lc/a/b/a/e$c;->l()Lc/a/b/a/l$e;

    move-result-object p3

    iget-object v0, p0, Lc/a/b/a/e;->a:Lc/a/b/a/e$c;

    invoke-interface {v0}, Lc/a/b/a/e$c;->f()Lc/a/b/a/l$f;

    move-result-object v0

    invoke-direct {p1, p2, p3, v0}, Lc/a/b/a/l;-><init>(Landroid/content/Context;Lc/a/b/a/l$e;Lc/a/b/a/l$f;)V

    iput-object p1, p0, Lc/a/b/a/e;->d:Lc/a/b/a/l;

    iget-object p1, p0, Lc/a/b/a/e;->d:Lc/a/b/a/l;

    iget-object p2, p0, Lc/a/b/a/e;->g:Lio/flutter/embedding/engine/h/b;

    invoke-virtual {p1, p2}, Lc/a/b/a/l;->a(Lio/flutter/embedding/engine/h/b;)V

    new-instance p1, Lc/a/b/a/i;

    iget-object p2, p0, Lc/a/b/a/e;->a:Lc/a/b/a/e$c;

    invoke-interface {p2}, Lc/a/b/a/e$c;->o()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Lc/a/b/a/i;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lc/a/b/a/e;->c:Lc/a/b/a/i;

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x11

    if-lt p1, p2, :cond_0

    iget-object p1, p0, Lc/a/b/a/e;->c:Lc/a/b/a/i;

    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result p2

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lc/a/b/a/e;->c:Lc/a/b/a/i;

    const p2, 0x1d063b02

    :goto_0
    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setId(I)V

    iget-object p1, p0, Lc/a/b/a/e;->c:Lc/a/b/a/i;

    iget-object p2, p0, Lc/a/b/a/e;->d:Lc/a/b/a/l;

    iget-object p3, p0, Lc/a/b/a/e;->a:Lc/a/b/a/e$c;

    invoke-interface {p3}, Lc/a/b/a/e$c;->n()Lc/a/b/a/n;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lc/a/b/a/i;->a(Lc/a/b/a/l;Lc/a/b/a/n;)V

    iget-object p1, p0, Lc/a/b/a/e;->c:Lc/a/b/a/i;

    return-object p1
.end method

.method a(I)V
    .locals 3

    invoke-direct {p0}, Lc/a/b/a/e;->m()V

    iget-object v0, p0, Lc/a/b/a/e;->b:Lio/flutter/embedding/engine/a;

    const-string v1, "FlutterActivityAndFragmentDelegate"

    if-eqz v0, :cond_0

    const/16 v0, 0xa

    if-ne p1, v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Forwarding onTrimMemory() to FlutterEngine. Level: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lc/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lc/a/b/a/e;->b:Lio/flutter/embedding/engine/a;

    invoke-virtual {p1}, Lio/flutter/embedding/engine/a;->n()Lio/flutter/embedding/engine/i/i;

    move-result-object p1

    invoke-virtual {p1}, Lio/flutter/embedding/engine/i/i;->a()V

    goto :goto_0

    :cond_0
    const-string p1, "onTrimMemory() invoked before FlutterFragment was attached to an Activity."

    invoke-static {v1, p1}, Lc/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method a(IILandroid/content/Intent;)V
    .locals 3

    invoke-direct {p0}, Lc/a/b/a/e;->m()V

    iget-object v0, p0, Lc/a/b/a/e;->b:Lio/flutter/embedding/engine/a;

    const-string v1, "FlutterActivityAndFragmentDelegate"

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Forwarding onActivityResult() to FlutterEngine:\nrequestCode: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\nresultCode: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\ndata: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lc/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lc/a/b/a/e;->b:Lio/flutter/embedding/engine/a;

    invoke-virtual {v0}, Lio/flutter/embedding/engine/a;->c()Lio/flutter/embedding/engine/g/c/b;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lio/flutter/embedding/engine/g/c/b;->a(IILandroid/content/Intent;)Z

    goto :goto_0

    :cond_0
    const-string p1, "onActivityResult() invoked before FlutterFragment was attached to an Activity."

    invoke-static {v1, p1}, Lc/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method a(I[Ljava/lang/String;[I)V
    .locals 3

    invoke-direct {p0}, Lc/a/b/a/e;->m()V

    iget-object v0, p0, Lc/a/b/a/e;->b:Lio/flutter/embedding/engine/a;

    const-string v1, "FlutterActivityAndFragmentDelegate"

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Forwarding onRequestPermissionsResult() to FlutterEngine:\nrequestCode: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\npermissions: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\ngrantResults: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lc/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lc/a/b/a/e;->b:Lio/flutter/embedding/engine/a;

    invoke-virtual {v0}, Lio/flutter/embedding/engine/a;->c()Lio/flutter/embedding/engine/g/c/b;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lio/flutter/embedding/engine/g/c/b;->a(I[Ljava/lang/String;[I)Z

    goto :goto_0

    :cond_0
    const-string p1, "onRequestPermissionResult() invoked before FlutterFragment was attached to an Activity."

    invoke-static {v1, p1}, Lc/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method a(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Lc/a/b/a/e;->m()V

    iget-object p1, p0, Lc/a/b/a/e;->b:Lio/flutter/embedding/engine/a;

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lc/a/b/a/e;->k()V

    :cond_0
    iget-object p1, p0, Lc/a/b/a/e;->a:Lc/a/b/a/e$c;

    invoke-interface {p1}, Lc/a/b/a/e$c;->d()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lc/a/b/a/e;->b:Lio/flutter/embedding/engine/a;

    invoke-interface {p1, v0, v1}, Lc/a/b/a/e$c;->a(Landroid/app/Activity;Lio/flutter/embedding/engine/a;)Lio/flutter/plugin/platform/c;

    move-result-object p1

    iput-object p1, p0, Lc/a/b/a/e;->e:Lio/flutter/plugin/platform/c;

    iget-object p1, p0, Lc/a/b/a/e;->a:Lc/a/b/a/e$c;

    invoke-interface {p1}, Lc/a/b/a/e$c;->k()Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "FlutterActivityAndFragmentDelegate"

    const-string v0, "Attaching FlutterEngine to the Activity that owns this Fragment."

    invoke-static {p1, v0}, Lc/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lc/a/b/a/e;->b:Lio/flutter/embedding/engine/a;

    invoke-virtual {p1}, Lio/flutter/embedding/engine/a;->c()Lio/flutter/embedding/engine/g/c/b;

    move-result-object p1

    iget-object v0, p0, Lc/a/b/a/e;->a:Lc/a/b/a/e$c;

    invoke-interface {v0}, Lc/a/b/a/e$c;->d()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lc/a/b/a/e;->a:Lc/a/b/a/e$c;

    invoke-interface {v1}, Lc/a/b/a/e$c;->c()Landroidx/lifecycle/e;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lio/flutter/embedding/engine/g/c/b;->a(Landroid/app/Activity;Landroidx/lifecycle/e;)V

    :cond_1
    iget-object p1, p0, Lc/a/b/a/e;->a:Lc/a/b/a/e$c;

    iget-object v0, p0, Lc/a/b/a/e;->b:Lio/flutter/embedding/engine/a;

    invoke-interface {p1, v0}, Lc/a/b/a/e$c;->a(Lio/flutter/embedding/engine/a;)V

    return-void
.end method

.method a(Landroid/content/Intent;)V
    .locals 2

    invoke-direct {p0}, Lc/a/b/a/e;->m()V

    iget-object v0, p0, Lc/a/b/a/e;->b:Lio/flutter/embedding/engine/a;

    const-string v1, "FlutterActivityAndFragmentDelegate"

    if-eqz v0, :cond_0

    const-string v0, "Forwarding onNewIntent() to FlutterEngine."

    invoke-static {v1, v0}, Lc/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lc/a/b/a/e;->b:Lio/flutter/embedding/engine/a;

    invoke-virtual {v0}, Lio/flutter/embedding/engine/a;->c()Lio/flutter/embedding/engine/g/c/b;

    move-result-object v0

    invoke-interface {v0, p1}, Lio/flutter/embedding/engine/g/c/b;->a(Landroid/content/Intent;)V

    goto :goto_0

    :cond_0
    const-string p1, "onNewIntent() invoked before FlutterFragment was attached to an Activity."

    invoke-static {v1, p1}, Lc/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method a(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "FlutterActivityAndFragmentDelegate"

    const-string v1, "onActivityCreated. Giving plugins an opportunity to restore state."

    invoke-static {v0, v1}, Lc/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lc/a/b/a/e;->m()V

    iget-object v0, p0, Lc/a/b/a/e;->a:Lc/a/b/a/e$c;

    invoke-interface {v0}, Lc/a/b/a/e$c;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc/a/b/a/e;->b:Lio/flutter/embedding/engine/a;

    invoke-virtual {v0}, Lio/flutter/embedding/engine/a;->c()Lio/flutter/embedding/engine/g/c/b;

    move-result-object v0

    invoke-interface {v0, p1}, Lio/flutter/embedding/engine/g/c/b;->a(Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method a()Z
    .locals 1

    iget-boolean v0, p0, Lc/a/b/a/e;->f:Z

    return v0
.end method

.method b()V
    .locals 2

    invoke-direct {p0}, Lc/a/b/a/e;->m()V

    iget-object v0, p0, Lc/a/b/a/e;->b:Lio/flutter/embedding/engine/a;

    const-string v1, "FlutterActivityAndFragmentDelegate"

    if-eqz v0, :cond_0

    const-string v0, "Forwarding onBackPressed() to FlutterEngine."

    invoke-static {v1, v0}, Lc/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lc/a/b/a/e;->b:Lio/flutter/embedding/engine/a;

    invoke-virtual {v0}, Lio/flutter/embedding/engine/a;->h()Lio/flutter/embedding/engine/i/e;

    move-result-object v0

    invoke-virtual {v0}, Lio/flutter/embedding/engine/i/e;->a()V

    goto :goto_0

    :cond_0
    const-string v0, "Invoked onBackPressed() before FlutterFragment was attached to an Activity."

    invoke-static {v1, v0}, Lc/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method b(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "FlutterActivityAndFragmentDelegate"

    const-string v1, "onSaveInstanceState. Giving plugins an opportunity to save state."

    invoke-static {v0, v1}, Lc/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lc/a/b/a/e;->m()V

    iget-object v0, p0, Lc/a/b/a/e;->a:Lc/a/b/a/e$c;

    invoke-interface {v0}, Lc/a/b/a/e$c;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc/a/b/a/e;->b:Lio/flutter/embedding/engine/a;

    invoke-virtual {v0}, Lio/flutter/embedding/engine/a;->c()Lio/flutter/embedding/engine/g/c/b;

    move-result-object v0

    invoke-interface {v0, p1}, Lio/flutter/embedding/engine/g/c/b;->b(Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method c()V
    .locals 2

    const-string v0, "FlutterActivityAndFragmentDelegate"

    const-string v1, "onDestroyView()"

    invoke-static {v0, v1}, Lc/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lc/a/b/a/e;->m()V

    iget-object v0, p0, Lc/a/b/a/e;->d:Lc/a/b/a/l;

    iget-object v1, p0, Lc/a/b/a/e;->g:Lio/flutter/embedding/engine/h/b;

    invoke-virtual {v0, v1}, Lc/a/b/a/l;->b(Lio/flutter/embedding/engine/h/b;)V

    return-void
.end method

.method d()V
    .locals 3

    const-string v0, "FlutterActivityAndFragmentDelegate"

    const-string v1, "onDetach()"

    invoke-static {v0, v1}, Lc/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lc/a/b/a/e;->m()V

    iget-object v1, p0, Lc/a/b/a/e;->a:Lc/a/b/a/e$c;

    iget-object v2, p0, Lc/a/b/a/e;->b:Lio/flutter/embedding/engine/a;

    invoke-interface {v1, v2}, Lc/a/b/a/e$c;->b(Lio/flutter/embedding/engine/a;)V

    iget-object v1, p0, Lc/a/b/a/e;->a:Lc/a/b/a/e$c;

    invoke-interface {v1}, Lc/a/b/a/e$c;->k()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "Detaching FlutterEngine from the Activity that owns this Fragment."

    invoke-static {v0, v1}, Lc/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lc/a/b/a/e;->a:Lc/a/b/a/e$c;

    invoke-interface {v0}, Lc/a/b/a/e$c;->d()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc/a/b/a/e;->b:Lio/flutter/embedding/engine/a;

    invoke-virtual {v0}, Lio/flutter/embedding/engine/a;->c()Lio/flutter/embedding/engine/g/c/b;

    move-result-object v0

    invoke-interface {v0}, Lio/flutter/embedding/engine/g/c/b;->b()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lc/a/b/a/e;->b:Lio/flutter/embedding/engine/a;

    invoke-virtual {v0}, Lio/flutter/embedding/engine/a;->c()Lio/flutter/embedding/engine/g/c/b;

    move-result-object v0

    invoke-interface {v0}, Lio/flutter/embedding/engine/g/c/b;->c()V

    :cond_1
    :goto_0
    iget-object v0, p0, Lc/a/b/a/e;->e:Lio/flutter/plugin/platform/c;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lio/flutter/plugin/platform/c;->a()V

    iput-object v1, p0, Lc/a/b/a/e;->e:Lio/flutter/plugin/platform/c;

    :cond_2
    iget-object v0, p0, Lc/a/b/a/e;->b:Lio/flutter/embedding/engine/a;

    invoke-virtual {v0}, Lio/flutter/embedding/engine/a;->f()Lio/flutter/embedding/engine/i/c;

    move-result-object v0

    invoke-virtual {v0}, Lio/flutter/embedding/engine/i/c;->a()V

    iget-object v0, p0, Lc/a/b/a/e;->a:Lc/a/b/a/e$c;

    invoke-interface {v0}, Lc/a/b/a/e$c;->m()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lc/a/b/a/e;->b:Lio/flutter/embedding/engine/a;

    invoke-virtual {v0}, Lio/flutter/embedding/engine/a;->a()V

    iget-object v0, p0, Lc/a/b/a/e;->a:Lc/a/b/a/e$c;

    invoke-interface {v0}, Lc/a/b/a/e$c;->h()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-static {}, Lio/flutter/embedding/engine/b;->a()Lio/flutter/embedding/engine/b;

    move-result-object v0

    iget-object v2, p0, Lc/a/b/a/e;->a:Lc/a/b/a/e$c;

    invoke-interface {v2}, Lc/a/b/a/e$c;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lio/flutter/embedding/engine/b;->b(Ljava/lang/String;)V

    :cond_3
    iput-object v1, p0, Lc/a/b/a/e;->b:Lio/flutter/embedding/engine/a;

    :cond_4
    return-void
.end method

.method e()V
    .locals 2

    const-string v0, "FlutterActivityAndFragmentDelegate"

    const-string v1, "onPause()"

    invoke-static {v0, v1}, Lc/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lc/a/b/a/e;->m()V

    iget-object v0, p0, Lc/a/b/a/e;->b:Lio/flutter/embedding/engine/a;

    invoke-virtual {v0}, Lio/flutter/embedding/engine/a;->f()Lio/flutter/embedding/engine/i/c;

    move-result-object v0

    invoke-virtual {v0}, Lio/flutter/embedding/engine/i/c;->b()V

    return-void
.end method

.method f()V
    .locals 2

    const-string v0, "FlutterActivityAndFragmentDelegate"

    const-string v1, "onPostResume()"

    invoke-static {v0, v1}, Lc/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lc/a/b/a/e;->m()V

    iget-object v1, p0, Lc/a/b/a/e;->b:Lio/flutter/embedding/engine/a;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lc/a/b/a/e;->e:Lio/flutter/plugin/platform/c;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lio/flutter/plugin/platform/c;->b()V

    goto :goto_0

    :cond_0
    const-string v1, "onPostResume() invoked before FlutterFragment was attached to an Activity."

    invoke-static {v0, v1}, Lc/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method g()V
    .locals 2

    const-string v0, "FlutterActivityAndFragmentDelegate"

    const-string v1, "onResume()"

    invoke-static {v0, v1}, Lc/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lc/a/b/a/e;->m()V

    iget-object v0, p0, Lc/a/b/a/e;->b:Lio/flutter/embedding/engine/a;

    invoke-virtual {v0}, Lio/flutter/embedding/engine/a;->f()Lio/flutter/embedding/engine/i/c;

    move-result-object v0

    invoke-virtual {v0}, Lio/flutter/embedding/engine/i/c;->d()V

    return-void
.end method

.method h()V
    .locals 2

    const-string v0, "FlutterActivityAndFragmentDelegate"

    const-string v1, "onStart()"

    invoke-static {v0, v1}, Lc/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lc/a/b/a/e;->m()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lc/a/b/a/e$b;

    invoke-direct {v1, p0}, Lc/a/b/a/e$b;-><init>(Lc/a/b/a/e;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method i()V
    .locals 2

    const-string v0, "FlutterActivityAndFragmentDelegate"

    const-string v1, "onStop()"

    invoke-static {v0, v1}, Lc/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lc/a/b/a/e;->m()V

    iget-object v0, p0, Lc/a/b/a/e;->b:Lio/flutter/embedding/engine/a;

    invoke-virtual {v0}, Lio/flutter/embedding/engine/a;->f()Lio/flutter/embedding/engine/i/c;

    move-result-object v0

    invoke-virtual {v0}, Lio/flutter/embedding/engine/i/c;->c()V

    iget-object v0, p0, Lc/a/b/a/e;->d:Lc/a/b/a/l;

    invoke-virtual {v0}, Lc/a/b/a/l;->a()V

    return-void
.end method

.method j()V
    .locals 2

    invoke-direct {p0}, Lc/a/b/a/e;->m()V

    iget-object v0, p0, Lc/a/b/a/e;->b:Lio/flutter/embedding/engine/a;

    const-string v1, "FlutterActivityAndFragmentDelegate"

    if-eqz v0, :cond_0

    const-string v0, "Forwarding onUserLeaveHint() to FlutterEngine."

    invoke-static {v1, v0}, Lc/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lc/a/b/a/e;->b:Lio/flutter/embedding/engine/a;

    invoke-virtual {v0}, Lio/flutter/embedding/engine/a;->c()Lio/flutter/embedding/engine/g/c/b;

    move-result-object v0

    invoke-interface {v0}, Lio/flutter/embedding/engine/g/c/b;->a()V

    goto :goto_0

    :cond_0
    const-string v0, "onUserLeaveHint() invoked before FlutterFragment was attached to an Activity."

    invoke-static {v1, v0}, Lc/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method k()V
    .locals 4

    const-string v0, "FlutterActivityAndFragmentDelegate"

    const-string v1, "Setting up FlutterEngine."

    invoke-static {v0, v1}, Lc/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lc/a/b/a/e;->a:Lc/a/b/a/e$c;

    invoke-interface {v1}, Lc/a/b/a/e$c;->h()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    invoke-static {}, Lio/flutter/embedding/engine/b;->a()Lio/flutter/embedding/engine/b;

    move-result-object v0

    invoke-virtual {v0, v1}, Lio/flutter/embedding/engine/b;->a(Ljava/lang/String;)Lio/flutter/embedding/engine/a;

    move-result-object v0

    iput-object v0, p0, Lc/a/b/a/e;->b:Lio/flutter/embedding/engine/a;

    iput-boolean v2, p0, Lc/a/b/a/e;->f:Z

    iget-object v0, p0, Lc/a/b/a/e;->b:Lio/flutter/embedding/engine/a;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The requested cached FlutterEngine did not exist in the FlutterEngineCache: \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\'"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v1, p0, Lc/a/b/a/e;->a:Lc/a/b/a/e$c;

    invoke-interface {v1}, Lc/a/b/a/e$c;->o()Landroid/content/Context;

    move-result-object v3

    invoke-interface {v1, v3}, Lc/a/b/a/e$c;->a(Landroid/content/Context;)Lio/flutter/embedding/engine/a;

    move-result-object v1

    iput-object v1, p0, Lc/a/b/a/e;->b:Lio/flutter/embedding/engine/a;

    iget-object v1, p0, Lc/a/b/a/e;->b:Lio/flutter/embedding/engine/a;

    if-eqz v1, :cond_2

    iput-boolean v2, p0, Lc/a/b/a/e;->f:Z

    return-void

    :cond_2
    const-string v1, "No preferred FlutterEngine was provided. Creating a new FlutterEngine for this FlutterFragment."

    invoke-static {v0, v1}, Lc/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lio/flutter/embedding/engine/a;

    iget-object v1, p0, Lc/a/b/a/e;->a:Lc/a/b/a/e$c;

    invoke-interface {v1}, Lc/a/b/a/e$c;->o()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lc/a/b/a/e;->a:Lc/a/b/a/e$c;

    invoke-interface {v2}, Lc/a/b/a/e$c;->g()Lio/flutter/embedding/engine/d;

    move-result-object v2

    invoke-virtual {v2}, Lio/flutter/embedding/engine/d;->a()[Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lio/flutter/embedding/engine/a;-><init>(Landroid/content/Context;[Ljava/lang/String;)V

    iput-object v0, p0, Lc/a/b/a/e;->b:Lio/flutter/embedding/engine/a;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lc/a/b/a/e;->f:Z

    return-void
.end method
