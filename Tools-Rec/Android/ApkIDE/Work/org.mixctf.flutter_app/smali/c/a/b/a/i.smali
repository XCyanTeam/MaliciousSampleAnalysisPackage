.class final Lc/a/b/a/i;
.super Landroid/widget/FrameLayout;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/a/b/a/i$d;
    }
.end annotation


# static fields
.field private static j:Ljava/lang/String; = "FlutterSplashView"


# instance fields
.field private a:Lc/a/b/a/n;

.field private b:Lc/a/b/a/l;

.field private c:Landroid/view/View;

.field private d:Landroid/os/Bundle;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private final g:Lc/a/b/a/l$d;

.field private final h:Lio/flutter/embedding/engine/h/b;

.field private final i:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lc/a/b/a/i;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p1, Lc/a/b/a/i$a;

    invoke-direct {p1, p0}, Lc/a/b/a/i$a;-><init>(Lc/a/b/a/i;)V

    iput-object p1, p0, Lc/a/b/a/i;->g:Lc/a/b/a/l$d;

    new-instance p1, Lc/a/b/a/i$b;

    invoke-direct {p1, p0}, Lc/a/b/a/i$b;-><init>(Lc/a/b/a/i;)V

    iput-object p1, p0, Lc/a/b/a/i;->h:Lio/flutter/embedding/engine/h/b;

    new-instance p1, Lc/a/b/a/i$c;

    invoke-direct {p1, p0}, Lc/a/b/a/i$c;-><init>(Lc/a/b/a/i;)V

    iput-object p1, p0, Lc/a/b/a/i;->i:Ljava/lang/Runnable;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setSaveEnabled(Z)V

    return-void
.end method

.method static synthetic a(Lc/a/b/a/i;)Lc/a/b/a/l;
    .locals 0

    iget-object p0, p0, Lc/a/b/a/i;->b:Lc/a/b/a/l;

    return-object p0
.end method

.method static synthetic a(Lc/a/b/a/i;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lc/a/b/a/i;->f:Ljava/lang/String;

    return-object p1
.end method

.method private a()Z
    .locals 2

    iget-object v0, p0, Lc/a/b/a/i;->b:Lc/a/b/a/l;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lc/a/b/a/l;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lc/a/b/a/i;->b:Lc/a/b/a/l;

    invoke-virtual {v0}, Lc/a/b/a/l;->getAttachedFlutterEngine()Lio/flutter/embedding/engine/a;

    move-result-object v0

    invoke-virtual {v0}, Lio/flutter/embedding/engine/a;->d()Lio/flutter/embedding/engine/e/a;

    move-result-object v0

    invoke-virtual {v0}, Lio/flutter/embedding/engine/e/a;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc/a/b/a/i;->b:Lc/a/b/a/l;

    invoke-virtual {v0}, Lc/a/b/a/l;->getAttachedFlutterEngine()Lio/flutter/embedding/engine/a;

    move-result-object v0

    invoke-virtual {v0}, Lio/flutter/embedding/engine/a;->d()Lio/flutter/embedding/engine/e/a;

    move-result-object v0

    invoke-virtual {v0}, Lio/flutter/embedding/engine/e/a;->a()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lc/a/b/a/i;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot determine if splash has completed when no FlutterEngine is attached to our FlutterView. This question depends on an isolate ID to differentiate Flutter experiences."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot determine if splash has completed when no FlutterView is set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic b(Lc/a/b/a/i;)Lc/a/b/a/n;
    .locals 0

    iget-object p0, p0, Lc/a/b/a/i;->a:Lc/a/b/a/n;

    return-object p0
.end method

.method private b()Z
    .locals 1

    iget-object v0, p0, Lc/a/b/a/i;->b:Lc/a/b/a/l;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lc/a/b/a/l;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc/a/b/a/i;->b:Lc/a/b/a/l;

    invoke-virtual {v0}, Lc/a/b/a/l;->b()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lc/a/b/a/i;->a()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic c(Lc/a/b/a/i;)V
    .locals 0

    invoke-direct {p0}, Lc/a/b/a/i;->d()V

    return-void
.end method

.method private c()Z
    .locals 1

    iget-object v0, p0, Lc/a/b/a/i;->b:Lc/a/b/a/l;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lc/a/b/a/l;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc/a/b/a/i;->a:Lc/a/b/a/n;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lc/a/b/a/n;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lc/a/b/a/i;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic d(Lc/a/b/a/i;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lc/a/b/a/i;->c:Landroid/view/View;

    return-object p0
.end method

.method private d()V
    .locals 3

    iget-object v0, p0, Lc/a/b/a/i;->b:Lc/a/b/a/l;

    invoke-virtual {v0}, Lc/a/b/a/l;->getAttachedFlutterEngine()Lio/flutter/embedding/engine/a;

    move-result-object v0

    invoke-virtual {v0}, Lio/flutter/embedding/engine/a;->d()Lio/flutter/embedding/engine/e/a;

    move-result-object v0

    invoke-virtual {v0}, Lio/flutter/embedding/engine/e/a;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc/a/b/a/i;->e:Ljava/lang/String;

    sget-object v0, Lc/a/b/a/i;->j:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Transitioning splash screen to a Flutter UI. Isolate: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lc/a/b/a/i;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lc/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lc/a/b/a/i;->a:Lc/a/b/a/n;

    iget-object v1, p0, Lc/a/b/a/i;->i:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Lc/a/b/a/n;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic e(Lc/a/b/a/i;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lc/a/b/a/i;->e:Ljava/lang/String;

    return-object p0
.end method

.method private e()Z
    .locals 2

    iget-object v0, p0, Lc/a/b/a/i;->b:Lc/a/b/a/l;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lc/a/b/a/l;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lc/a/b/a/i;->b:Lc/a/b/a/l;

    invoke-virtual {v0}, Lc/a/b/a/l;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lc/a/b/a/i;->a()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot determine if previous splash transition was interrupted when no FlutterEngine is attached to our FlutterView. This question depends on an isolate ID to differentiate Flutter experiences."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot determine if previous splash transition was interrupted when no FlutterView is set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public a(Lc/a/b/a/l;Lc/a/b/a/n;)V
    .locals 2

    iget-object v0, p0, Lc/a/b/a/i;->b:Lc/a/b/a/l;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lc/a/b/a/i;->h:Lio/flutter/embedding/engine/h/b;

    invoke-virtual {v0, v1}, Lc/a/b/a/l;->b(Lio/flutter/embedding/engine/h/b;)V

    iget-object v0, p0, Lc/a/b/a/i;->b:Lc/a/b/a/l;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    :cond_0
    iget-object v0, p0, Lc/a/b/a/i;->c:Landroid/view/View;

    if-eqz v0, :cond_1

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    :cond_1
    iput-object p1, p0, Lc/a/b/a/i;->b:Lc/a/b/a/l;

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    iput-object p2, p0, Lc/a/b/a/i;->a:Lc/a/b/a/n;

    if-eqz p2, :cond_4

    invoke-direct {p0}, Lc/a/b/a/i;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lc/a/b/a/i;->j:Ljava/lang/String;

    const-string v1, "Showing splash screen UI."

    invoke-static {v0, v1}, Lc/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lc/a/b/a/i;->d:Landroid/os/Bundle;

    invoke-interface {p2, v0, v1}, Lc/a/b/a/n;->a(Landroid/content/Context;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lc/a/b/a/i;->c:Landroid/view/View;

    iget-object p2, p0, Lc/a/b/a/i;->c:Landroid/view/View;

    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    iget-object p2, p0, Lc/a/b/a/i;->h:Lio/flutter/embedding/engine/h/b;

    invoke-virtual {p1, p2}, Lc/a/b/a/l;->a(Lio/flutter/embedding/engine/h/b;)V

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lc/a/b/a/i;->c()Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object p1, Lc/a/b/a/i;->j:Ljava/lang/String;

    const-string v0, "Showing an immediate splash transition to Flutter due to previously interrupted transition."

    invoke-static {p1, v0}, Lc/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lc/a/b/a/i;->d:Landroid/os/Bundle;

    invoke-interface {p2, p1, v0}, Lc/a/b/a/n;->a(Landroid/content/Context;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lc/a/b/a/i;->c:Landroid/view/View;

    iget-object p1, p0, Lc/a/b/a/i;->c:Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    invoke-direct {p0}, Lc/a/b/a/i;->d()V

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lc/a/b/a/l;->c()Z

    move-result p2

    if-nez p2, :cond_4

    sget-object p2, Lc/a/b/a/i;->j:Ljava/lang/String;

    const-string v0, "FlutterView is not yet attached to a FlutterEngine. Showing nothing until a FlutterEngine is attached."

    invoke-static {p2, v0}, Lc/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lc/a/b/a/i;->g:Lc/a/b/a/l$d;

    invoke-virtual {p1, p2}, Lc/a/b/a/l;->a(Lc/a/b/a/l$d;)V

    :cond_4
    :goto_0
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    check-cast p1, Lc/a/b/a/i$d;

    invoke-virtual {p1}, Landroid/view/View$BaseSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    invoke-static {p1}, Lc/a/b/a/i$d;->a(Lc/a/b/a/i$d;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc/a/b/a/i;->f:Ljava/lang/String;

    invoke-static {p1}, Lc/a/b/a/i$d;->b(Lc/a/b/a/i$d;)Landroid/os/Bundle;

    move-result-object p1

    iput-object p1, p0, Lc/a/b/a/i;->d:Landroid/os/Bundle;

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    new-instance v1, Lc/a/b/a/i$d;

    invoke-direct {v1, v0}, Lc/a/b/a/i$d;-><init>(Landroid/os/Parcelable;)V

    iget-object v0, p0, Lc/a/b/a/i;->f:Ljava/lang/String;

    invoke-static {v1, v0}, Lc/a/b/a/i$d;->a(Lc/a/b/a/i$d;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lc/a/b/a/i;->a:Lc/a/b/a/n;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lc/a/b/a/n;->b()Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v1, v0}, Lc/a/b/a/i$d;->a(Lc/a/b/a/i$d;Landroid/os/Bundle;)Landroid/os/Bundle;

    return-object v1
.end method
