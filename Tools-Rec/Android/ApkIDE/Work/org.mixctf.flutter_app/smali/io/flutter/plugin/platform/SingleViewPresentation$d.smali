.class Lio/flutter/plugin/platform/SingleViewPresentation$d;
.super Landroid/content/ContextWrapper;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/flutter/plugin/platform/SingleViewPresentation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "d"
.end annotation


# instance fields
.field private final a:Lio/flutter/plugin/platform/SingleViewPresentation$f;

.field private b:Landroid/view/WindowManager;


# direct methods
.method constructor <init>(Landroid/content/Context;Lio/flutter/plugin/platform/SingleViewPresentation$f;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lio/flutter/plugin/platform/SingleViewPresentation$d;->a:Lio/flutter/plugin/platform/SingleViewPresentation$f;

    return-void
.end method

.method private a()Landroid/view/WindowManager;
    .locals 1

    iget-object v0, p0, Lio/flutter/plugin/platform/SingleViewPresentation$d;->b:Landroid/view/WindowManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lio/flutter/plugin/platform/SingleViewPresentation$d;->a:Lio/flutter/plugin/platform/SingleViewPresentation$f;

    invoke-virtual {v0}, Lio/flutter/plugin/platform/SingleViewPresentation$f;->a()Landroid/view/WindowManager;

    move-result-object v0

    iput-object v0, p0, Lio/flutter/plugin/platform/SingleViewPresentation$d;->b:Landroid/view/WindowManager;

    :cond_0
    iget-object v0, p0, Lio/flutter/plugin/platform/SingleViewPresentation$d;->b:Landroid/view/WindowManager;

    return-object v0
.end method


# virtual methods
.method public getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    const-string v0, "window"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lio/flutter/plugin/platform/SingleViewPresentation$d;->a()Landroid/view/WindowManager;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-super {p0, p1}, Landroid/content/ContextWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
