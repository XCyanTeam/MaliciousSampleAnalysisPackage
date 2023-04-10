.class Lc/a/b/a/j$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


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

    iput-object p1, p0, Lc/a/b/a/j$a;->a:Lc/a/b/a/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0

    const-string p1, "FlutterSurfaceView"

    const-string p2, "SurfaceHolder.Callback.surfaceChanged()"

    invoke-static {p1, p2}, Lc/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lc/a/b/a/j$a;->a:Lc/a/b/a/j;

    invoke-static {p1}, Lc/a/b/a/j;->a(Lc/a/b/a/j;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lc/a/b/a/j$a;->a:Lc/a/b/a/j;

    invoke-static {p1, p3, p4}, Lc/a/b/a/j;->a(Lc/a/b/a/j;II)V

    :cond_0
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 1

    const-string p1, "FlutterSurfaceView"

    const-string v0, "SurfaceHolder.Callback.startRenderingToSurface()"

    invoke-static {p1, v0}, Lc/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lc/a/b/a/j$a;->a:Lc/a/b/a/j;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lc/a/b/a/j;->a(Lc/a/b/a/j;Z)Z

    iget-object p1, p0, Lc/a/b/a/j$a;->a:Lc/a/b/a/j;

    invoke-static {p1}, Lc/a/b/a/j;->a(Lc/a/b/a/j;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lc/a/b/a/j$a;->a:Lc/a/b/a/j;

    invoke-static {p1}, Lc/a/b/a/j;->b(Lc/a/b/a/j;)V

    :cond_0
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1

    const-string p1, "FlutterSurfaceView"

    const-string v0, "SurfaceHolder.Callback.stopRenderingToSurface()"

    invoke-static {p1, v0}, Lc/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lc/a/b/a/j$a;->a:Lc/a/b/a/j;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lc/a/b/a/j;->a(Lc/a/b/a/j;Z)Z

    iget-object p1, p0, Lc/a/b/a/j$a;->a:Lc/a/b/a/j;

    invoke-static {p1}, Lc/a/b/a/j;->a(Lc/a/b/a/j;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lc/a/b/a/j$a;->a:Lc/a/b/a/j;

    invoke-static {p1}, Lc/a/b/a/j;->c(Lc/a/b/a/j;)V

    :cond_0
    return-void
.end method
