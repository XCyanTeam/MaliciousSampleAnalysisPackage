.class Lio/flutter/embedding/engine/f/b;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/flutter/embedding/engine/f/b$c;
    }
.end annotation


# instance fields
.field private final a:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/flutter/embedding/engine/f/b;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method a()V
    .locals 5

    iget-object v0, p0, Lio/flutter/embedding/engine/f/b;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v1, Lio/flutter/embedding/engine/f/b$c;

    new-instance v2, Lio/flutter/embedding/engine/f/b$a;

    invoke-direct {v2, p0}, Lio/flutter/embedding/engine/f/b$a;-><init>(Lio/flutter/embedding/engine/f/b;)V

    invoke-virtual {v0, v2}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v0

    invoke-direct {v1, v0}, Lio/flutter/embedding/engine/f/b$c;-><init>([Ljava/io/File;)V

    invoke-virtual {v1}, Lio/flutter/embedding/engine/f/b$c;->a()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lio/flutter/embedding/engine/f/b$b;

    invoke-direct {v2, p0, v1}, Lio/flutter/embedding/engine/f/b$b;-><init>(Lio/flutter/embedding/engine/f/b;Lio/flutter/embedding/engine/f/b$c;)V

    const-wide/16 v3, 0x1388

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
