.class Lc/a/b/a/e$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/a/b/a/e;->h()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lc/a/b/a/e;


# direct methods
.method constructor <init>(Lc/a/b/a/e;)V
    .locals 0

    iput-object p1, p0, Lc/a/b/a/e$b;->a:Lc/a/b/a/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const-string v0, "FlutterActivityAndFragmentDelegate"

    const-string v1, "Attaching FlutterEngine to FlutterView."

    invoke-static {v0, v1}, Lc/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lc/a/b/a/e$b;->a:Lc/a/b/a/e;

    invoke-static {v0}, Lc/a/b/a/e;->c(Lc/a/b/a/e;)Lc/a/b/a/l;

    move-result-object v0

    iget-object v1, p0, Lc/a/b/a/e$b;->a:Lc/a/b/a/e;

    invoke-static {v1}, Lc/a/b/a/e;->b(Lc/a/b/a/e;)Lio/flutter/embedding/engine/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lc/a/b/a/l;->a(Lio/flutter/embedding/engine/a;)V

    iget-object v0, p0, Lc/a/b/a/e$b;->a:Lc/a/b/a/e;

    invoke-static {v0}, Lc/a/b/a/e;->d(Lc/a/b/a/e;)V

    return-void
.end method
