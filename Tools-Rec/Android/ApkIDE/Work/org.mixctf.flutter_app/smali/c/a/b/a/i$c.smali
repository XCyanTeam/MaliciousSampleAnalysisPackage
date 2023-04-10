.class Lc/a/b/a/i$c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


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

    iput-object p1, p0, Lc/a/b/a/i$c;->a:Lc/a/b/a/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lc/a/b/a/i$c;->a:Lc/a/b/a/i;

    invoke-static {v0}, Lc/a/b/a/i;->d(Lc/a/b/a/i;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lc/a/b/a/i$c;->a:Lc/a/b/a/i;

    invoke-static {v0}, Lc/a/b/a/i;->e(Lc/a/b/a/i;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lc/a/b/a/i;->a(Lc/a/b/a/i;Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method
