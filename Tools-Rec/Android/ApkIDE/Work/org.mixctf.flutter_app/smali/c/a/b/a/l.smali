.class public Lc/a/b/a/l;
.super Landroid/widget/FrameLayout;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/a/b/a/l$d;,
        Lc/a/b/a/l$f;,
        Lc/a/b/a/l$e;
    }
.end annotation


# instance fields
.field private a:Lc/a/b/a/l$e;

.field private b:Lc/a/b/a/l$f;

.field private c:Lio/flutter/embedding/engine/h/c;

.field private final d:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lio/flutter/embedding/engine/h/b;",
            ">;"
        }
    .end annotation
.end field

.field private e:Z

.field private f:Lio/flutter/embedding/engine/a;

.field private final g:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lc/a/b/a/l$d;",
            ">;"
        }
    .end annotation
.end field

.field private h:Lc/a/c/b/b;

.field private i:Lc/a/b/a/a;

.field private j:Lc/a/b/a/b;

.field private k:Lio/flutter/view/c;

.field private final l:Lio/flutter/embedding/engine/h/a$c;

.field private final m:Lio/flutter/view/c$i;

.field private final n:Lio/flutter/embedding/engine/h/b;


# direct methods
.method private constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;Lc/a/b/a/l$e;Lc/a/b/a/l$f;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lc/a/b/a/l;->d:Ljava/util/Set;

    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lc/a/b/a/l;->g:Ljava/util/Set;

    new-instance p1, Lio/flutter/embedding/engine/h/a$c;

    invoke-direct {p1}, Lio/flutter/embedding/engine/h/a$c;-><init>()V

    iput-object p1, p0, Lc/a/b/a/l;->l:Lio/flutter/embedding/engine/h/a$c;

    new-instance p1, Lc/a/b/a/l$a;

    invoke-direct {p1, p0}, Lc/a/b/a/l$a;-><init>(Lc/a/b/a/l;)V

    iput-object p1, p0, Lc/a/b/a/l;->m:Lio/flutter/view/c$i;

    new-instance p1, Lc/a/b/a/l$b;

    invoke-direct {p1, p0}, Lc/a/b/a/l$b;-><init>(Lc/a/b/a/l;)V

    iput-object p1, p0, Lc/a/b/a/l;->n:Lio/flutter/embedding/engine/h/b;

    if-nez p3, :cond_0

    sget-object p3, Lc/a/b/a/l$e;->a:Lc/a/b/a/l$e;

    :cond_0
    iput-object p3, p0, Lc/a/b/a/l;->a:Lc/a/b/a/l$e;

    if-eqz p4, :cond_1

    goto :goto_0

    :cond_1
    sget-object p4, Lc/a/b/a/l$f;->a:Lc/a/b/a/l$f;

    :goto_0
    iput-object p4, p0, Lc/a/b/a/l;->b:Lc/a/b/a/l$f;

    invoke-direct {p0}, Lc/a/b/a/l;->e()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lc/a/b/a/l$e;Lc/a/b/a/l$f;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2, p3}, Lc/a/b/a/l;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Lc/a/b/a/l$e;Lc/a/b/a/l$f;)V

    return-void
.end method

.method static synthetic a(Lc/a/b/a/l;)Ljava/util/Set;
    .locals 0

    iget-object p0, p0, Lc/a/b/a/l;->d:Ljava/util/Set;

    return-object p0
.end method

.method private a(Landroid/content/res/Configuration;)V
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-lt v1, v2, :cond_0

    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/LocaleList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    invoke-virtual {p1, v2}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-object p1, p0, Lc/a/b/a/l;->f:Lio/flutter/embedding/engine/a;

    invoke-virtual {p1}, Lio/flutter/embedding/engine/a;->g()Lio/flutter/embedding/engine/i/d;

    move-result-object p1

    invoke-virtual {p1, v0}, Lio/flutter/embedding/engine/i/d;->a(Ljava/util/List;)V

    return-void
.end method

.method static synthetic a(Lc/a/b/a/l;ZZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lc/a/b/a/l;->a(ZZ)V

    return-void
.end method

.method private a(ZZ)V
    .locals 2

    iget-object v0, p0, Lc/a/b/a/l;->f:Lio/flutter/embedding/engine/a;

    invoke-virtual {v0}, Lio/flutter/embedding/engine/a;->l()Lio/flutter/embedding/engine/h/a;

    move-result-object v0

    invoke-virtual {v0}, Lio/flutter/embedding/engine/h/a;->c()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    const/4 v1, 0x1

    :cond_0
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->setWillNotDraw(Z)V

    return-void
.end method

.method static synthetic a(Lc/a/b/a/l;Z)Z
    .locals 0

    iput-boolean p1, p0, Lc/a/b/a/l;->e:Z

    return p1
.end method

.method private e()V
    .locals 5

    const-string v0, "FlutterView"

    const-string v1, "Initializing FlutterView"

    invoke-static {v0, v1}, Lc/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lc/a/b/a/l$c;->a:[I

    iget-object v2, p0, Lc/a/b/a/l;->a:Lc/a/b/a/l$e;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    const/4 v3, 0x2

    if-eq v1, v3, :cond_0

    goto :goto_2

    :cond_0
    const-string v1, "Internally using a FlutterTextureView."

    invoke-static {v0, v1}, Lc/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lc/a/b/a/k;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lc/a/b/a/k;-><init>(Landroid/content/Context;)V

    :goto_0
    iput-object v0, p0, Lc/a/b/a/l;->c:Lio/flutter/embedding/engine/h/c;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    goto :goto_2

    :cond_1
    const-string v1, "Internally using a FlutterSurfaceView."

    invoke-static {v0, v1}, Lc/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lc/a/b/a/j;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v3, p0, Lc/a/b/a/l;->b:Lc/a/b/a/l$f;

    sget-object v4, Lc/a/b/a/l$f;->b:Lc/a/b/a/l$f;

    if-ne v3, v4, :cond_2

    const/4 v3, 0x1

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    :goto_1
    invoke-direct {v0, v1, v3}, Lc/a/b/a/j;-><init>(Landroid/content/Context;Z)V

    goto :goto_0

    :goto_2
    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->setFocusable(Z)V

    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->setFocusableInTouchMode(Z)V

    return-void
.end method

.method private f()V
    .locals 2

    invoke-virtual {p0}, Lc/a/b/a/l;->c()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "FlutterView"

    const-string v1, "Tried to send viewport metrics from Android to Flutter but this FlutterView was not attached to a FlutterEngine."

    invoke-static {v0, v1}, Lc/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lc/a/b/a/l;->l:Lio/flutter/embedding/engine/h/a$c;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    iput v1, v0, Lio/flutter/embedding/engine/h/a$c;->a:F

    iget-object v0, p0, Lc/a/b/a/l;->f:Lio/flutter/embedding/engine/a;

    invoke-virtual {v0}, Lio/flutter/embedding/engine/a;->l()Lio/flutter/embedding/engine/h/a;

    move-result-object v0

    iget-object v1, p0, Lc/a/b/a/l;->l:Lio/flutter/embedding/engine/h/a$c;

    invoke-virtual {v0, v1}, Lio/flutter/embedding/engine/h/a;->a(Lio/flutter/embedding/engine/h/a$c;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Detaching from a FlutterEngine: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lc/a/b/a/l;->f:Lio/flutter/embedding/engine/a;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FlutterView"

    invoke-static {v1, v0}, Lc/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lc/a/b/a/l;->c()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Not attached to an engine. Doing nothing."

    invoke-static {v1, v0}, Lc/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lc/a/b/a/l;->g:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc/a/b/a/l$d;

    invoke-interface {v1}, Lc/a/b/a/l$d;->a()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lc/a/b/a/l;->f:Lio/flutter/embedding/engine/a;

    invoke-virtual {v0}, Lio/flutter/embedding/engine/a;->j()Lio/flutter/plugin/platform/i;

    move-result-object v0

    invoke-virtual {v0}, Lio/flutter/plugin/platform/i;->c()V

    iget-object v0, p0, Lc/a/b/a/l;->f:Lio/flutter/embedding/engine/a;

    invoke-virtual {v0}, Lio/flutter/embedding/engine/a;->j()Lio/flutter/plugin/platform/i;

    move-result-object v0

    invoke-virtual {v0}, Lio/flutter/plugin/platform/i;->a()V

    iget-object v0, p0, Lc/a/b/a/l;->k:Lio/flutter/view/c;

    invoke-virtual {v0}, Lio/flutter/view/c;->c()V

    const/4 v0, 0x0

    iput-object v0, p0, Lc/a/b/a/l;->k:Lio/flutter/view/c;

    iget-object v1, p0, Lc/a/b/a/l;->h:Lc/a/c/b/b;

    invoke-virtual {v1}, Lc/a/c/b/b;->b()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    iget-object v1, p0, Lc/a/b/a/l;->h:Lc/a/c/b/b;

    invoke-virtual {v1}, Lc/a/c/b/b;->a()V

    iget-object v1, p0, Lc/a/b/a/l;->f:Lio/flutter/embedding/engine/a;

    invoke-virtual {v1}, Lio/flutter/embedding/engine/a;->l()Lio/flutter/embedding/engine/h/a;

    move-result-object v1

    const/4 v2, 0x0

    iput-boolean v2, p0, Lc/a/b/a/l;->e:Z

    iget-object v3, p0, Lc/a/b/a/l;->n:Lio/flutter/embedding/engine/h/b;

    invoke-virtual {v1, v3}, Lio/flutter/embedding/engine/h/a;->b(Lio/flutter/embedding/engine/h/b;)V

    invoke-virtual {v1}, Lio/flutter/embedding/engine/h/a;->d()V

    invoke-virtual {v1, v2}, Lio/flutter/embedding/engine/h/a;->a(Z)V

    iget-object v1, p0, Lc/a/b/a/l;->c:Lio/flutter/embedding/engine/h/c;

    invoke-interface {v1}, Lio/flutter/embedding/engine/h/c;->a()V

    iput-object v0, p0, Lc/a/b/a/l;->f:Lio/flutter/embedding/engine/a;

    return-void
.end method

.method public a(Lc/a/b/a/l$d;)V
    .locals 1

    iget-object v0, p0, Lc/a/b/a/l;->g:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Lio/flutter/embedding/engine/a;)V
    .locals 8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Attaching to a FlutterEngine: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FlutterView"

    invoke-static {v1, v0}, Lc/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lc/a/b/a/l;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lc/a/b/a/l;->f:Lio/flutter/embedding/engine/a;

    if-ne p1, v0, :cond_0

    const-string p1, "Already attached to this engine. Doing nothing."

    invoke-static {v1, p1}, Lc/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v0, "Currently attached to a different engine. Detaching and then attaching to new engine."

    invoke-static {v1, v0}, Lc/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lc/a/b/a/l;->a()V

    :cond_1
    iput-object p1, p0, Lc/a/b/a/l;->f:Lio/flutter/embedding/engine/a;

    iget-object v0, p0, Lc/a/b/a/l;->f:Lio/flutter/embedding/engine/a;

    invoke-virtual {v0}, Lio/flutter/embedding/engine/a;->l()Lio/flutter/embedding/engine/h/a;

    move-result-object v0

    invoke-virtual {v0}, Lio/flutter/embedding/engine/h/a;->b()Z

    move-result v1

    iput-boolean v1, p0, Lc/a/b/a/l;->e:Z

    iget-object v1, p0, Lc/a/b/a/l;->c:Lio/flutter/embedding/engine/h/c;

    invoke-interface {v1, v0}, Lio/flutter/embedding/engine/h/c;->a(Lio/flutter/embedding/engine/h/a;)V

    iget-object v1, p0, Lc/a/b/a/l;->n:Lio/flutter/embedding/engine/h/b;

    invoke-virtual {v0, v1}, Lio/flutter/embedding/engine/h/a;->a(Lio/flutter/embedding/engine/h/b;)V

    new-instance v0, Lc/a/c/b/b;

    iget-object v1, p0, Lc/a/b/a/l;->f:Lio/flutter/embedding/engine/a;

    invoke-virtual {v1}, Lio/flutter/embedding/engine/a;->d()Lio/flutter/embedding/engine/e/a;

    move-result-object v1

    iget-object v2, p0, Lc/a/b/a/l;->f:Lio/flutter/embedding/engine/a;

    invoke-virtual {v2}, Lio/flutter/embedding/engine/a;->j()Lio/flutter/plugin/platform/i;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lc/a/c/b/b;-><init>(Landroid/view/View;Lio/flutter/embedding/engine/e/a;Lio/flutter/plugin/platform/i;)V

    iput-object v0, p0, Lc/a/b/a/l;->h:Lc/a/c/b/b;

    new-instance v0, Lc/a/b/a/a;

    iget-object v1, p0, Lc/a/b/a/l;->f:Lio/flutter/embedding/engine/a;

    invoke-virtual {v1}, Lio/flutter/embedding/engine/a;->e()Lio/flutter/embedding/engine/i/b;

    move-result-object v1

    iget-object v2, p0, Lc/a/b/a/l;->h:Lc/a/c/b/b;

    invoke-direct {v0, v1, v2}, Lc/a/b/a/a;-><init>(Lio/flutter/embedding/engine/i/b;Lc/a/c/b/b;)V

    iput-object v0, p0, Lc/a/b/a/l;->i:Lc/a/b/a/a;

    new-instance v0, Lc/a/b/a/b;

    iget-object v1, p0, Lc/a/b/a/l;->f:Lio/flutter/embedding/engine/a;

    invoke-virtual {v1}, Lio/flutter/embedding/engine/a;->l()Lio/flutter/embedding/engine/h/a;

    move-result-object v1

    invoke-direct {v0, v1}, Lc/a/b/a/b;-><init>(Lio/flutter/embedding/engine/h/a;)V

    iput-object v0, p0, Lc/a/b/a/l;->j:Lc/a/b/a/b;

    new-instance v0, Lio/flutter/view/c;

    invoke-virtual {p1}, Lio/flutter/embedding/engine/a;->b()Lio/flutter/embedding/engine/i/a;

    move-result-object v4

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "accessibility"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    iget-object v1, p0, Lc/a/b/a/l;->f:Lio/flutter/embedding/engine/a;

    invoke-virtual {v1}, Lio/flutter/embedding/engine/a;->j()Lio/flutter/plugin/platform/i;

    move-result-object v7

    move-object v2, v0

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Lio/flutter/view/c;-><init>(Landroid/view/View;Lio/flutter/embedding/engine/i/a;Landroid/view/accessibility/AccessibilityManager;Landroid/content/ContentResolver;Lio/flutter/plugin/platform/h;)V

    iput-object v0, p0, Lc/a/b/a/l;->k:Lio/flutter/view/c;

    iget-object v0, p0, Lc/a/b/a/l;->k:Lio/flutter/view/c;

    iget-object v1, p0, Lc/a/b/a/l;->m:Lio/flutter/view/c$i;

    invoke-virtual {v0, v1}, Lio/flutter/view/c;->a(Lio/flutter/view/c$i;)V

    iget-object v0, p0, Lc/a/b/a/l;->k:Lio/flutter/view/c;

    invoke-virtual {v0}, Lio/flutter/view/c;->a()Z

    move-result v0

    iget-object v1, p0, Lc/a/b/a/l;->k:Lio/flutter/view/c;

    invoke-virtual {v1}, Lio/flutter/view/c;->b()Z

    move-result v1

    invoke-direct {p0, v0, v1}, Lc/a/b/a/l;->a(ZZ)V

    iget-object v0, p0, Lc/a/b/a/l;->f:Lio/flutter/embedding/engine/a;

    invoke-virtual {v0}, Lio/flutter/embedding/engine/a;->j()Lio/flutter/plugin/platform/i;

    move-result-object v0

    iget-object v1, p0, Lc/a/b/a/l;->k:Lio/flutter/view/c;

    invoke-virtual {v0, v1}, Lio/flutter/plugin/platform/i;->a(Lio/flutter/view/c;)V

    iget-object v0, p0, Lc/a/b/a/l;->h:Lc/a/c/b/b;

    invoke-virtual {v0}, Lc/a/c/b/b;->b()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    invoke-virtual {p0}, Lc/a/b/a/l;->d()V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-direct {p0, v0}, Lc/a/b/a/l;->a(Landroid/content/res/Configuration;)V

    invoke-direct {p0}, Lc/a/b/a/l;->f()V

    invoke-virtual {p1}, Lio/flutter/embedding/engine/a;->j()Lio/flutter/plugin/platform/i;

    move-result-object v0

    invoke-virtual {v0, p0}, Lio/flutter/plugin/platform/i;->a(Landroid/view/View;)V

    iget-object v0, p0, Lc/a/b/a/l;->g:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc/a/b/a/l$d;

    invoke-interface {v1, p1}, Lc/a/b/a/l$d;->a(Lio/flutter/embedding/engine/a;)V

    goto :goto_0

    :cond_2
    iget-boolean p1, p0, Lc/a/b/a/l;->e:Z

    if-eqz p1, :cond_3

    iget-object p1, p0, Lc/a/b/a/l;->n:Lio/flutter/embedding/engine/h/b;

    invoke-interface {p1}, Lio/flutter/embedding/engine/h/b;->a()V

    :cond_3
    return-void
.end method

.method public a(Lio/flutter/embedding/engine/h/b;)V
    .locals 1

    iget-object v0, p0, Lc/a/b/a/l;->d:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public b(Lc/a/b/a/l$d;)V
    .locals 1

    iget-object v0, p0, Lc/a/b/a/l;->g:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public b(Lio/flutter/embedding/engine/h/b;)V
    .locals 1

    iget-object v0, p0, Lc/a/b/a/l;->d:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public b()Z
    .locals 1

    iget-boolean v0, p0, Lc/a/b/a/l;->e:Z

    return v0
.end method

.method public c()Z
    .locals 2

    iget-object v0, p0, Lc/a/b/a/l;->f:Lio/flutter/embedding/engine/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lio/flutter/embedding/engine/a;->l()Lio/flutter/embedding/engine/h/a;

    move-result-object v0

    iget-object v1, p0, Lc/a/b/a/l;->c:Lio/flutter/embedding/engine/h/c;

    invoke-interface {v1}, Lio/flutter/embedding/engine/h/c;->getAttachedRenderer()Lio/flutter/embedding/engine/h/a;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public checkInputConnectionProxy(Landroid/view/View;)Z
    .locals 1

    iget-object v0, p0, Lc/a/b/a/l;->f:Lio/flutter/embedding/engine/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lio/flutter/embedding/engine/a;->j()Lio/flutter/plugin/platform/i;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/flutter/plugin/platform/i;->b(Landroid/view/View;)Z

    move-result p1

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->checkInputConnectionProxy(Landroid/view/View;)Z

    move-result p1

    :goto_0
    return p1
.end method

.method d()V
    .locals 3

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v0, v0, 0x30

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    sget-object v0, Lio/flutter/embedding/engine/i/h$b;->c:Lio/flutter/embedding/engine/i/h$b;

    goto :goto_1

    :cond_1
    sget-object v0, Lio/flutter/embedding/engine/i/h$b;->b:Lio/flutter/embedding/engine/i/h$b;

    :goto_1
    iget-object v1, p0, Lc/a/b/a/l;->f:Lio/flutter/embedding/engine/a;

    invoke-virtual {v1}, Lio/flutter/embedding/engine/a;->m()Lio/flutter/embedding/engine/i/h;

    move-result-object v1

    invoke-virtual {v1}, Lio/flutter/embedding/engine/i/h;->a()Lio/flutter/embedding/engine/i/h$a;

    move-result-object v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->fontScale:F

    invoke-virtual {v1, v2}, Lio/flutter/embedding/engine/i/h$a;->a(F)Lio/flutter/embedding/engine/i/h$a;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lio/flutter/embedding/engine/i/h$a;->a(Z)Lio/flutter/embedding/engine/i/h$a;

    invoke-virtual {v1, v0}, Lio/flutter/embedding/engine/i/h$a;->a(Lio/flutter/embedding/engine/i/h$b;)Lio/flutter/embedding/engine/i/h$a;

    invoke-virtual {v1}, Lio/flutter/embedding/engine/i/h$a;->a()V

    return-void
.end method

.method protected fitSystemWindows(Landroid/graphics/Rect;)Z
    .locals 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-gt v0, v1, :cond_0

    iget-object v0, p0, Lc/a/b/a/l;->l:Lio/flutter/embedding/engine/h/a$c;

    iget v1, p1, Landroid/graphics/Rect;->top:I

    iput v1, v0, Lio/flutter/embedding/engine/h/a$c;->d:I

    iget v1, p1, Landroid/graphics/Rect;->right:I

    iput v1, v0, Lio/flutter/embedding/engine/h/a$c;->e:I

    const/4 v1, 0x0

    iput v1, v0, Lio/flutter/embedding/engine/h/a$c;->f:I

    iget v2, p1, Landroid/graphics/Rect;->left:I

    iput v2, v0, Lio/flutter/embedding/engine/h/a$c;->g:I

    iput v1, v0, Lio/flutter/embedding/engine/h/a$c;->h:I

    iput v1, v0, Lio/flutter/embedding/engine/h/a$c;->i:I

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    iput p1, v0, Lio/flutter/embedding/engine/h/a$c;->j:I

    iput v1, v0, Lio/flutter/embedding/engine/h/a$c;->k:I

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Updating window insets (fitSystemWindows()):\nStatus bar insets: Top: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lc/a/b/a/l;->l:Lio/flutter/embedding/engine/h/a$c;

    iget v0, v0, Lio/flutter/embedding/engine/h/a$c;->d:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", Left: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lc/a/b/a/l;->l:Lio/flutter/embedding/engine/h/a$c;

    iget v1, v1, Lio/flutter/embedding/engine/h/a$c;->g:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", Right: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lc/a/b/a/l;->l:Lio/flutter/embedding/engine/h/a$c;

    iget v2, v2, Lio/flutter/embedding/engine/h/a$c;->e:I

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\nKeyboard insets: Bottom: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lc/a/b/a/l;->l:Lio/flutter/embedding/engine/h/a$c;

    iget v2, v2, Lio/flutter/embedding/engine/h/a$c;->j:I

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lc/a/b/a/l;->l:Lio/flutter/embedding/engine/h/a$c;

    iget v0, v0, Lio/flutter/embedding/engine/h/a$c;->k:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lc/a/b/a/l;->l:Lio/flutter/embedding/engine/h/a$c;

    iget v0, v0, Lio/flutter/embedding/engine/h/a$c;->i:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "FlutterView"

    invoke-static {v0, p1}, Lc/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lc/a/b/a/l;->f()V

    const/4 p1, 0x1

    return p1

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->fitSystemWindows(Landroid/graphics/Rect;)Z

    move-result p1

    return p1
.end method

.method public getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;
    .locals 1

    iget-object v0, p0, Lc/a/b/a/l;->k:Lio/flutter/view/c;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lio/flutter/view/c;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc/a/b/a/l;->k:Lio/flutter/view/c;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAttachedFlutterEngine()Lio/flutter/embedding/engine/a;
    .locals 1

    iget-object v0, p0, Lc/a/b/a/l;->f:Lio/flutter/embedding/engine/a;

    return-object v0
.end method

.method public final onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi",
            "NewApi"
        }
    .end annotation

    .annotation build Landroid/annotation/TargetApi;
        value = 0x14
    .end annotation

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object v0

    iget-object v1, p0, Lc/a/b/a/l;->l:Lio/flutter/embedding/engine/h/a$c;

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v2

    iput v2, v1, Lio/flutter/embedding/engine/h/a$c;->d:I

    iget-object v1, p0, Lc/a/b/a/l;->l:Lio/flutter/embedding/engine/h/a$c;

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetRight()I

    move-result v2

    iput v2, v1, Lio/flutter/embedding/engine/h/a$c;->e:I

    iget-object v1, p0, Lc/a/b/a/l;->l:Lio/flutter/embedding/engine/h/a$c;

    const/4 v2, 0x0

    iput v2, v1, Lio/flutter/embedding/engine/h/a$c;->f:I

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetLeft()I

    move-result v3

    iput v3, v1, Lio/flutter/embedding/engine/h/a$c;->g:I

    iget-object v1, p0, Lc/a/b/a/l;->l:Lio/flutter/embedding/engine/h/a$c;

    iput v2, v1, Lio/flutter/embedding/engine/h/a$c;->h:I

    iput v2, v1, Lio/flutter/embedding/engine/h/a$c;->i:I

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v3

    iput v3, v1, Lio/flutter/embedding/engine/h/a$c;->j:I

    iget-object v1, p0, Lc/a/b/a/l;->l:Lio/flutter/embedding/engine/h/a$c;

    iput v2, v1, Lio/flutter/embedding/engine/h/a$c;->k:I

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1d

    if-lt v1, v2, :cond_0

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemGestureInsets()Landroid/graphics/Insets;

    move-result-object p1

    iget-object v1, p0, Lc/a/b/a/l;->l:Lio/flutter/embedding/engine/h/a$c;

    iget v2, p1, Landroid/graphics/Insets;->top:I

    iput v2, v1, Lio/flutter/embedding/engine/h/a$c;->l:I

    iget-object v1, p0, Lc/a/b/a/l;->l:Lio/flutter/embedding/engine/h/a$c;

    iget v2, p1, Landroid/graphics/Insets;->right:I

    iput v2, v1, Lio/flutter/embedding/engine/h/a$c;->m:I

    iget-object v1, p0, Lc/a/b/a/l;->l:Lio/flutter/embedding/engine/h/a$c;

    iget v2, p1, Landroid/graphics/Insets;->bottom:I

    iput v2, v1, Lio/flutter/embedding/engine/h/a$c;->n:I

    iget-object v1, p0, Lc/a/b/a/l;->l:Lio/flutter/embedding/engine/h/a$c;

    iget p1, p1, Landroid/graphics/Insets;->left:I

    iput p1, v1, Lio/flutter/embedding/engine/h/a$c;->o:I

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Updating window insets (onApplyWindowInsets()):\nStatus bar insets: Top: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lc/a/b/a/l;->l:Lio/flutter/embedding/engine/h/a$c;

    iget v1, v1, Lio/flutter/embedding/engine/h/a$c;->d:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", Left: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lc/a/b/a/l;->l:Lio/flutter/embedding/engine/h/a$c;

    iget v2, v2, Lio/flutter/embedding/engine/h/a$c;->g:I

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", Right: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lc/a/b/a/l;->l:Lio/flutter/embedding/engine/h/a$c;

    iget v3, v3, Lio/flutter/embedding/engine/h/a$c;->e:I

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "\nKeyboard insets: Bottom: "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lc/a/b/a/l;->l:Lio/flutter/embedding/engine/h/a$c;

    iget v3, v3, Lio/flutter/embedding/engine/h/a$c;->j:I

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lc/a/b/a/l;->l:Lio/flutter/embedding/engine/h/a$c;

    iget v1, v1, Lio/flutter/embedding/engine/h/a$c;->k:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lc/a/b/a/l;->l:Lio/flutter/embedding/engine/h/a$c;

    iget v1, v1, Lio/flutter/embedding/engine/h/a$c;->i:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "System Gesture Insets - Left: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lc/a/b/a/l;->l:Lio/flutter/embedding/engine/h/a$c;

    iget v1, v1, Lio/flutter/embedding/engine/h/a$c;->o:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", Top: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lc/a/b/a/l;->l:Lio/flutter/embedding/engine/h/a$c;

    iget v1, v1, Lio/flutter/embedding/engine/h/a$c;->l:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lc/a/b/a/l;->l:Lio/flutter/embedding/engine/h/a$c;

    iget v1, v1, Lio/flutter/embedding/engine/h/a$c;->m:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", Bottom: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lc/a/b/a/l;->l:Lio/flutter/embedding/engine/h/a$c;

    iget v1, v1, Lio/flutter/embedding/engine/h/a$c;->j:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "FlutterView"

    invoke-static {v1, p1}, Lc/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lc/a/b/a/l;->f()V

    return-object v0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lc/a/b/a/l;->f:Lio/flutter/embedding/engine/a;

    if-eqz v0, :cond_0

    const-string v0, "FlutterView"

    const-string v1, "Configuration changed. Sending locales and user settings to Flutter."

    invoke-static {v0, v1}, Lc/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lc/a/b/a/l;->a(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Lc/a/b/a/l;->d()V

    :cond_0
    return-void
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 1

    invoke-virtual {p0}, Lc/a/b/a/l;->c()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object v0, p0, Lc/a/b/a/l;->h:Lc/a/c/b/b;

    invoke-virtual {v0, p0, p1}, Lc/a/c/b/b;->a(Landroid/view/View;Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;

    move-result-object p1

    return-object p1
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    invoke-virtual {p0}, Lc/a/b/a/l;->c()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc/a/b/a/l;->j:Lc/a/b/a/b;

    invoke-virtual {v0, p1}, Lc/a/b/a/b;->a(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    :goto_1
    return v1
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-virtual {p0}, Lc/a/b/a/l;->c()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_0
    iget-object v0, p0, Lc/a/b/a/l;->k:Lio/flutter/view/c;

    invoke-virtual {v0, p1}, Lio/flutter/view/c;->a(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    invoke-virtual {p0}, Lc/a/b/a/l;->c()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1

    :cond_0
    iget-object v0, p0, Lc/a/b/a/l;->i:Lc/a/b/a/a;

    invoke-virtual {v0, p2}, Lc/a/b/a/a;->a(Landroid/view/KeyEvent;)V

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    invoke-virtual {p0}, Lc/a/b/a/l;->c()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1

    :cond_0
    iget-object v0, p0, Lc/a/b/a/l;->i:Lc/a/b/a/a;

    invoke-virtual {v0, p2}, Lc/a/b/a/a;->b(Landroid/view/KeyEvent;)V

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method protected onSizeChanged(IIII)V
    .locals 2

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Size changed. Sending Flutter new viewport metrics. FlutterView was "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " x "

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p4, ", it is now "

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string p4, "FlutterView"

    invoke-static {p4, p3}, Lc/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p3, p0, Lc/a/b/a/l;->l:Lio/flutter/embedding/engine/h/a$c;

    iput p1, p3, Lio/flutter/embedding/engine/h/a$c;->b:I

    iput p2, p3, Lio/flutter/embedding/engine/h/a$c;->c:I

    invoke-direct {p0}, Lc/a/b/a/l;->f()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    invoke-virtual {p0}, Lc/a/b/a/l;->c()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_1

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->requestUnbufferedDispatch(Landroid/view/MotionEvent;)V

    :cond_1
    iget-object v0, p0, Lc/a/b/a/l;->j:Lc/a/b/a/b;

    invoke-virtual {v0, p1}, Lc/a/b/a/b;->b(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
