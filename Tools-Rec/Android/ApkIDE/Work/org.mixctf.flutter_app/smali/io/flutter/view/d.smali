.class public Lio/flutter/view/d;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static a:Z = false


# direct methods
.method public static a()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lio/flutter/embedding/engine/f/a;->b()Lio/flutter/embedding/engine/f/a;

    move-result-object v0

    invoke-virtual {v0}, Lio/flutter/embedding/engine/f/a;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;)V
    .locals 1

    sget-boolean v0, Lio/flutter/view/d;->a:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lio/flutter/embedding/engine/f/a;->b()Lio/flutter/embedding/engine/f/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lio/flutter/embedding/engine/f/a;->a(Landroid/content/Context;)V

    return-void
.end method
