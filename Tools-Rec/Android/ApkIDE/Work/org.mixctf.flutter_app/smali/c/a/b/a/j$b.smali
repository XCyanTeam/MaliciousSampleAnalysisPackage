.class Lc/a/b/a/j$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lio/flutter/embedding/engine/h/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/a/b/a/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lc/a/b/a/j;


# direct methods
.method constructor <init>(Lc/a/b/a/j;)V
    .locals 0

    iput-object p1, p0, Lc/a/b/a/j$b;->a:Lc/a/b/a/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    const-string v0, "FlutterSurfaceView"

    const-string v1, "onFlutterUiDisplayed()"

    invoke-static {v0, v1}, Lc/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lc/a/b/a/j$b;->a:Lc/a/b/a/j;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setAlpha(F)V

    iget-object v0, p0, Lc/a/b/a/j$b;->a:Lc/a/b/a/j;

    invoke-static {v0}, Lc/a/b/a/j;->d(Lc/a/b/a/j;)Lio/flutter/embedding/engine/h/a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc/a/b/a/j$b;->a:Lc/a/b/a/j;

    invoke-static {v0}, Lc/a/b/a/j;->d(Lc/a/b/a/j;)Lio/flutter/embedding/engine/h/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lio/flutter/embedding/engine/h/a;->b(Lio/flutter/embedding/engine/h/b;)V

    :cond_0
    return-void
.end method

.method public b()V
    .locals 0

    return-void
.end method
