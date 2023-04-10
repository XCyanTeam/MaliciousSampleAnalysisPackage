.class public final Lorg/mixctf/flutter_app/MainActivity;
.super Lc/a/b/a/d;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lc/a/b/a/d;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lio/flutter/embedding/engine/a;)V
    .locals 1

    const-string v0, "flutterEngine"

    invoke-static {p1, v0}, Ld/a/a/a;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lio/flutter/plugins/GeneratedPluginRegistrant;->registerWith(Lio/flutter/embedding/engine/a;)V

    return-void
.end method
