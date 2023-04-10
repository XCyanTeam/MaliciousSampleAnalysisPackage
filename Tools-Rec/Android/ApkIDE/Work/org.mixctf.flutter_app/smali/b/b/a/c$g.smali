.class Lb/b/a/c$g;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lb/b/a/c;->f(Lc/a/c/a/h;Lc/a/c/a/i$d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lb/b/a/a;

.field final synthetic b:Lb/b/a/c$i;

.field final synthetic c:Lb/b/a/c;


# direct methods
.method constructor <init>(Lb/b/a/c;Lb/b/a/a;Lb/b/a/c$i;)V
    .locals 0

    iput-object p1, p0, Lb/b/a/c$g;->c:Lb/b/a/c;

    iput-object p2, p0, Lb/b/a/c$g;->a:Lb/b/a/a;

    iput-object p3, p0, Lb/b/a/c$g;->b:Lb/b/a/c$i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    invoke-static {}, Lb/b/a/c;->b()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lb/b/a/c$g;->c:Lb/b/a/c;

    iget-object v2, p0, Lb/b/a/c$g;->a:Lb/b/a/a;

    invoke-static {v1, v2}, Lb/b/a/c;->a(Lb/b/a/c;Lb/b/a/a;)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lb/b/a/c$g;->b:Lb/b/a/c$i;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lb/b/a/c$i;->a(Ljava/lang/Object;)V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
