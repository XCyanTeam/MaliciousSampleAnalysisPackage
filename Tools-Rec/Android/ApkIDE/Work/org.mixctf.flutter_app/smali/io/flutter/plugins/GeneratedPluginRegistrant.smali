.class public final Lio/flutter/plugins/GeneratedPluginRegistrant;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static registerWith(Lio/flutter/embedding/engine/a;)V
    .locals 2

    new-instance v0, Lio/flutter/embedding/engine/g/g/a;

    invoke-direct {v0, p0}, Lio/flutter/embedding/engine/g/g/a;-><init>(Lio/flutter/embedding/engine/a;)V

    const-string v1, "io.github.ponnamkarthik.toast.fluttertoast.FluttertoastPlugin"

    invoke-virtual {v0, v1}, Lio/flutter/embedding/engine/g/g/a;->a(Ljava/lang/String;)Lc/a/c/a/k$c;

    move-result-object v1

    invoke-static {v1}, Lc/b/a/a/a/a;->a(Lc/a/c/a/k$c;)V

    invoke-virtual {p0}, Lio/flutter/embedding/engine/a;->k()Lio/flutter/embedding/engine/g/b;

    move-result-object p0

    new-instance v1, Lb/b/a/c;

    invoke-direct {v1}, Lb/b/a/c;-><init>()V

    invoke-interface {p0, v1}, Lio/flutter/embedding/engine/g/b;->a(Lio/flutter/embedding/engine/g/a;)V

    const-string p0, "com.kaivean.system_proxy.SystemProxyPlugin"

    invoke-virtual {v0, p0}, Lio/flutter/embedding/engine/g/g/a;->a(Ljava/lang/String;)Lc/a/c/a/k$c;

    move-result-object p0

    invoke-static {p0}, Lb/a/a/a;->a(Lc/a/c/a/k$c;)V

    return-void
.end method
