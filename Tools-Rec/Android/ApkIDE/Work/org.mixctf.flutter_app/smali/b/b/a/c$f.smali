.class Lb/b/a/c$f;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lb/b/a/c;->l(Lc/a/c/a/h;Lc/a/c/a/i$d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lb/b/a/c$i;

.field final synthetic d:Ljava/lang/Boolean;

.field final synthetic e:Lb/b/a/a;

.field final synthetic f:Lc/a/c/a/h;

.field final synthetic g:Z

.field final synthetic h:I

.field final synthetic i:Lb/b/a/c;


# direct methods
.method constructor <init>(Lb/b/a/c;ZLjava/lang/String;Lb/b/a/c$i;Ljava/lang/Boolean;Lb/b/a/a;Lc/a/c/a/h;ZI)V
    .locals 0

    iput-object p1, p0, Lb/b/a/c$f;->i:Lb/b/a/c;

    iput-boolean p2, p0, Lb/b/a/c$f;->a:Z

    iput-object p3, p0, Lb/b/a/c$f;->b:Ljava/lang/String;

    iput-object p4, p0, Lb/b/a/c$f;->c:Lb/b/a/c$i;

    iput-object p5, p0, Lb/b/a/c$f;->d:Ljava/lang/Boolean;

    iput-object p6, p0, Lb/b/a/c$f;->e:Lb/b/a/a;

    iput-object p7, p0, Lb/b/a/c$f;->f:Lc/a/c/a/h;

    iput-boolean p8, p0, Lb/b/a/c$f;->g:Z

    iput p9, p0, Lb/b/a/c$f;->h:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    invoke-static {}, Lb/b/a/c;->b()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lb/b/a/c$f;->a:Z

    if-nez v1, :cond_0

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lb/b/a/c$f;->b:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lb/b/a/c$f;->c:Lb/b/a/c$i;

    const-string v2, "sqlite_error"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "open_failed "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lb/b/a/c$f;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lb/b/a/c$i;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    return-void

    :cond_0
    :try_start_1
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v2, p0, Lb/b/a/c$f;->d:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lb/b/a/c$f;->e:Lb/b/a/a;

    invoke-virtual {v1}, Lb/b/a/a;->g()V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lb/b/a/c$f;->e:Lb/b/a/a;

    invoke-virtual {v1}, Lb/b/a/a;->f()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :goto_0
    :try_start_2
    invoke-static {}, Lb/b/a/c;->c()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    iget-boolean v2, p0, Lb/b/a/c$f;->g:Z

    if-eqz v2, :cond_2

    sget-object v2, Lb/b/a/c;->c:Ljava/util/Map;

    iget-object v3, p0, Lb/b/a/c$f;->b:Ljava/lang/String;

    iget v4, p0, Lb/b/a/c$f;->h:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    sget-object v2, Lb/b/a/c;->m:Ljava/util/Map;

    iget v3, p0, Lb/b/a/c$f;->h:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Lb/b/a/c$f;->e:Lb/b/a/a;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    iget-object v1, p0, Lb/b/a/c$f;->e:Lb/b/a/a;

    iget v1, v1, Lb/b/a/a;->d:I

    invoke-static {v1}, Lb/b/a/b;->a(I)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "Sqflite"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lb/b/a/c$f;->e:Lb/b/a/a;

    invoke-virtual {v3}, Lb/b/a/a;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "opened "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lb/b/a/c$f;->h:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lb/b/a/c$f;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    iget-object v0, p0, Lb/b/a/c$f;->c:Lb/b/a/c$i;

    iget v1, p0, Lb/b/a/c$f;->h:I

    const/4 v2, 0x0

    invoke-static {v1, v2, v2}, Lb/b/a/c;->a(IZZ)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lb/b/a/c$i;->a(Ljava/lang/Object;)V

    return-void

    :catchall_0
    move-exception v2

    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v2

    :catch_0
    move-exception v1

    new-instance v2, Lb/b/a/f/e;

    iget-object v3, p0, Lb/b/a/c$f;->f:Lc/a/c/a/h;

    iget-object v4, p0, Lb/b/a/c$f;->c:Lb/b/a/c$i;

    invoke-direct {v2, v3, v4}, Lb/b/a/f/e;-><init>(Lc/a/c/a/h;Lc/a/c/a/i$d;)V

    iget-object v3, p0, Lb/b/a/c$f;->i:Lb/b/a/c;

    iget-object v4, p0, Lb/b/a/c$f;->e:Lb/b/a/a;

    invoke-static {v3, v1, v2, v4}, Lb/b/a/c;->a(Lb/b/a/c;Ljava/lang/Exception;Lb/b/a/f/f;Lb/b/a/a;)V

    monitor-exit v0

    return-void

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v1
.end method
