.class public Lc/a/c/b/b;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/a/c/b/b$b;
    }
.end annotation


# instance fields
.field private final a:Landroid/view/View;

.field private final b:Landroid/view/inputmethod/InputMethodManager;

.field private final c:Lio/flutter/embedding/engine/i/j;

.field private d:Lc/a/c/b/b$b;

.field private e:Lio/flutter/embedding/engine/i/j$b;

.field private f:Landroid/text/Editable;

.field private g:Z

.field private h:Landroid/view/inputmethod/InputConnection;

.field private i:Lio/flutter/plugin/platform/i;

.field private final j:Z

.field private k:Z


# direct methods
.method public constructor <init>(Landroid/view/View;Lio/flutter/embedding/engine/e/a;Lio/flutter/plugin/platform/i;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lc/a/c/b/b$b;

    sget-object v1, Lc/a/c/b/b$b$a;->a:Lc/a/c/b/b$b$a;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lc/a/c/b/b$b;-><init>(Lc/a/c/b/b$b$a;I)V

    iput-object v0, p0, Lc/a/c/b/b;->d:Lc/a/c/b/b$b;

    iput-object p1, p0, Lc/a/c/b/b;->a:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "input_method"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    iput-object p1, p0, Lc/a/c/b/b;->b:Landroid/view/inputmethod/InputMethodManager;

    new-instance p1, Lio/flutter/embedding/engine/i/j;

    invoke-direct {p1, p2}, Lio/flutter/embedding/engine/i/j;-><init>(Lio/flutter/embedding/engine/e/a;)V

    iput-object p1, p0, Lc/a/c/b/b;->c:Lio/flutter/embedding/engine/i/j;

    iget-object p1, p0, Lc/a/c/b/b;->c:Lio/flutter/embedding/engine/i/j;

    new-instance p2, Lc/a/c/b/b$a;

    invoke-direct {p2, p0}, Lc/a/c/b/b$a;-><init>(Lc/a/c/b/b;)V

    invoke-virtual {p1, p2}, Lio/flutter/embedding/engine/i/j;->a(Lio/flutter/embedding/engine/i/j$f;)V

    iget-object p1, p0, Lc/a/c/b/b;->c:Lio/flutter/embedding/engine/i/j;

    invoke-virtual {p1}, Lio/flutter/embedding/engine/i/j;->a()V

    iput-object p3, p0, Lc/a/c/b/b;->i:Lio/flutter/plugin/platform/i;

    iget-object p1, p0, Lc/a/c/b/b;->i:Lio/flutter/plugin/platform/i;

    invoke-virtual {p1, p0}, Lio/flutter/plugin/platform/i;->a(Lc/a/c/b/b;)V

    invoke-direct {p0}, Lc/a/c/b/b;->g()Z

    move-result p1

    iput-boolean p1, p0, Lc/a/c/b/b;->j:Z

    return-void
.end method

.method private static a(Lio/flutter/embedding/engine/i/j$c;ZZZLio/flutter/embedding/engine/i/j$d;)I
    .locals 2

    iget-object v0, p0, Lio/flutter/embedding/engine/i/j$c;->a:Lio/flutter/embedding/engine/i/j$g;

    sget-object v1, Lio/flutter/embedding/engine/i/j$g;->c:Lio/flutter/embedding/engine/i/j$g;

    if-ne v0, v1, :cond_0

    const/4 p0, 0x4

    return p0

    :cond_0
    sget-object v1, Lio/flutter/embedding/engine/i/j$g;->d:Lio/flutter/embedding/engine/i/j$g;

    if-ne v0, v1, :cond_3

    const/4 p1, 0x2

    iget-boolean p2, p0, Lio/flutter/embedding/engine/i/j$c;->b:Z

    if-eqz p2, :cond_1

    const/16 p1, 0x1002

    :cond_1
    iget-boolean p0, p0, Lio/flutter/embedding/engine/i/j$c;->c:Z

    if-eqz p0, :cond_2

    or-int/lit16 p1, p1, 0x2000

    :cond_2
    return p1

    :cond_3
    sget-object p0, Lio/flutter/embedding/engine/i/j$g;->e:Lio/flutter/embedding/engine/i/j$g;

    if-ne v0, p0, :cond_4

    const/4 p0, 0x3

    return p0

    :cond_4
    const/4 p0, 0x1

    sget-object v1, Lio/flutter/embedding/engine/i/j$g;->f:Lio/flutter/embedding/engine/i/j$g;

    if-ne v0, v1, :cond_5

    const p0, 0x20001

    goto :goto_0

    :cond_5
    sget-object v1, Lio/flutter/embedding/engine/i/j$g;->g:Lio/flutter/embedding/engine/i/j$g;

    if-ne v0, v1, :cond_6

    const/16 p0, 0x21

    goto :goto_0

    :cond_6
    sget-object v1, Lio/flutter/embedding/engine/i/j$g;->h:Lio/flutter/embedding/engine/i/j$g;

    if-ne v0, v1, :cond_7

    const/16 p0, 0x11

    goto :goto_0

    :cond_7
    sget-object v1, Lio/flutter/embedding/engine/i/j$g;->i:Lio/flutter/embedding/engine/i/j$g;

    if-ne v0, v1, :cond_8

    const/16 p0, 0x91

    :cond_8
    :goto_0
    const/high16 v0, 0x80000

    if-eqz p1, :cond_9

    or-int/2addr p0, v0

    or-int/lit16 p0, p0, 0x80

    goto :goto_1

    :cond_9
    if-eqz p2, :cond_a

    const p1, 0x8000

    or-int/2addr p0, p1

    :cond_a
    if-nez p3, :cond_b

    or-int/2addr p0, v0

    :cond_b
    :goto_1
    sget-object p1, Lio/flutter/embedding/engine/i/j$d;->b:Lio/flutter/embedding/engine/i/j$d;

    if-ne p4, p1, :cond_c

    or-int/lit16 p0, p0, 0x1000

    goto :goto_2

    :cond_c
    sget-object p1, Lio/flutter/embedding/engine/i/j$d;->c:Lio/flutter/embedding/engine/i/j$d;

    if-ne p4, p1, :cond_d

    or-int/lit16 p0, p0, 0x2000

    goto :goto_2

    :cond_d
    sget-object p1, Lio/flutter/embedding/engine/i/j$d;->d:Lio/flutter/embedding/engine/i/j$d;

    if-ne p4, p1, :cond_e

    or-int/lit16 p0, p0, 0x4000

    :cond_e
    :goto_2
    return p0
.end method

.method static synthetic a(Lc/a/c/b/b;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lc/a/c/b/b;->a:Landroid/view/View;

    return-object p0
.end method

.method private a(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lc/a/c/b/b;->b:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p1}, Landroid/view/View;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    return-void
.end method

.method static synthetic a(Lc/a/c/b/b;I)V
    .locals 0

    invoke-direct {p0, p1}, Lc/a/c/b/b;->b(I)V

    return-void
.end method

.method static synthetic a(Lc/a/c/b/b;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lc/a/c/b/b;->b(Landroid/view/View;)V

    return-void
.end method

.method private a(Lio/flutter/embedding/engine/i/j$e;)V
    .locals 2

    iget v0, p1, Lio/flutter/embedding/engine/i/j$e;->b:I

    iget p1, p1, Lio/flutter/embedding/engine/i/j$e;->c:I

    if-ltz v0, :cond_0

    iget-object v1, p0, Lc/a/c/b/b;->f:Landroid/text/Editable;

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    if-gt v0, v1, :cond_0

    if-ltz p1, :cond_0

    iget-object v1, p0, Lc/a/c/b/b;->f:Landroid/text/Editable;

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    if-gt p1, v1, :cond_0

    iget-object v1, p0, Lc/a/c/b/b;->f:Landroid/text/Editable;

    invoke-static {v1, v0, p1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lc/a/c/b/b;->f:Landroid/text/Editable;

    invoke-static {p1}, Landroid/text/Selection;->removeSelection(Landroid/text/Spannable;)V

    :goto_0
    return-void
.end method

.method private b(I)V
    .locals 2

    iget-object v0, p0, Lc/a/c/b/b;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    new-instance v0, Lc/a/c/b/b$b;

    sget-object v1, Lc/a/c/b/b$b$a;->c:Lc/a/c/b/b$b$a;

    invoke-direct {v0, v1, p1}, Lc/a/c/b/b$b;-><init>(Lc/a/c/b/b$b$a;I)V

    iput-object v0, p0, Lc/a/c/b/b;->d:Lc/a/c/b/b$b;

    iget-object p1, p0, Lc/a/c/b/b;->b:Landroid/view/inputmethod/InputMethodManager;

    iget-object v0, p0, Lc/a/c/b/b;->a:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lc/a/c/b/b;->g:Z

    return-void
.end method

.method private b(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    iget-object v0, p0, Lc/a/c/b/b;->b:Landroid/view/inputmethod/InputMethodManager;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    return-void
.end method

.method static synthetic b(Lc/a/c/b/b;)V
    .locals 0

    invoke-direct {p0}, Lc/a/c/b/b;->f()V

    return-void
.end method

.method static synthetic b(Lc/a/c/b/b;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lc/a/c/b/b;->a(Landroid/view/View;)V

    return-void
.end method

.method private f()V
    .locals 3

    iget-object v0, p0, Lc/a/c/b/b;->d:Lc/a/c/b/b$b;

    iget-object v0, v0, Lc/a/c/b/b$b;->a:Lc/a/c/b/b$b$a;

    sget-object v1, Lc/a/c/b/b$b$a;->c:Lc/a/c/b/b$b$a;

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    new-instance v0, Lc/a/c/b/b$b;

    sget-object v1, Lc/a/c/b/b$b$a;->a:Lc/a/c/b/b$b$a;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lc/a/c/b/b$b;-><init>(Lc/a/c/b/b$b$a;I)V

    iput-object v0, p0, Lc/a/c/b/b;->d:Lc/a/c/b/b$b;

    invoke-virtual {p0}, Lc/a/c/b/b;->e()V

    return-void
.end method

.method private g()Z
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    iget-object v0, p0, Lc/a/c/b/b;->b:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->getCurrentInputMethodSubtype()Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v0

    if-eqz v0, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_1

    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v1, "samsung"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lc/a/c/b/b;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "default_input_method"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Samsung"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public a(Landroid/view/View;Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 5

    iget-object v0, p0, Lc/a/c/b/b;->d:Lc/a/c/b/b$b;

    iget-object v1, v0, Lc/a/c/b/b$b;->a:Lc/a/c/b/b$b$a;

    sget-object v2, Lc/a/c/b/b$b$a;->a:Lc/a/c/b/b$b$a;

    if-ne v1, v2, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lc/a/c/b/b;->h:Landroid/view/inputmethod/InputConnection;

    return-object p1

    :cond_0
    sget-object v2, Lc/a/c/b/b$b$a;->c:Lc/a/c/b/b$b$a;

    if-ne v1, v2, :cond_2

    iget-boolean p1, p0, Lc/a/c/b/b;->k:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lc/a/c/b/b;->h:Landroid/view/inputmethod/InputConnection;

    return-object p1

    :cond_1
    iget-object p1, p0, Lc/a/c/b/b;->i:Lio/flutter/plugin/platform/i;

    iget v0, v0, Lc/a/c/b/b$b;->b:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/flutter/plugin/platform/i;->a(Ljava/lang/Integer;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/View;->onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;

    move-result-object p1

    iput-object p1, p0, Lc/a/c/b/b;->h:Landroid/view/inputmethod/InputConnection;

    iget-object p1, p0, Lc/a/c/b/b;->h:Landroid/view/inputmethod/InputConnection;

    return-object p1

    :cond_2
    iget-object v0, p0, Lc/a/c/b/b;->e:Lio/flutter/embedding/engine/i/j$b;

    iget-object v1, v0, Lio/flutter/embedding/engine/i/j$b;->e:Lio/flutter/embedding/engine/i/j$c;

    iget-boolean v2, v0, Lio/flutter/embedding/engine/i/j$b;->a:Z

    iget-boolean v3, v0, Lio/flutter/embedding/engine/i/j$b;->b:Z

    iget-boolean v4, v0, Lio/flutter/embedding/engine/i/j$b;->c:Z

    iget-object v0, v0, Lio/flutter/embedding/engine/i/j$b;->d:Lio/flutter/embedding/engine/i/j$d;

    invoke-static {v1, v2, v3, v4, v0}, Lc/a/c/b/b;->a(Lio/flutter/embedding/engine/i/j$c;ZZZLio/flutter/embedding/engine/i/j$d;)I

    move-result v0

    iput v0, p2, Landroid/view/inputmethod/EditorInfo;->inputType:I

    const/high16 v0, 0x2000000

    iput v0, p2, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    iget-object v0, p0, Lc/a/c/b/b;->e:Lio/flutter/embedding/engine/i/j$b;

    iget-object v0, v0, Lio/flutter/embedding/engine/i/j$b;->f:Ljava/lang/Integer;

    if-nez v0, :cond_4

    const/high16 v0, 0x20000

    iget v1, p2, Landroid/view/inputmethod/EditorInfo;->inputType:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x6

    goto :goto_0

    :cond_4
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_0
    iget-object v1, p0, Lc/a/c/b/b;->e:Lio/flutter/embedding/engine/i/j$b;

    iget-object v1, v1, Lio/flutter/embedding/engine/i/j$b;->g:Ljava/lang/String;

    if-eqz v1, :cond_5

    iput-object v1, p2, Landroid/view/inputmethod/EditorInfo;->actionLabel:Ljava/lang/CharSequence;

    iput v0, p2, Landroid/view/inputmethod/EditorInfo;->actionId:I

    :cond_5
    iget v1, p2, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    or-int/2addr v0, v1

    iput v0, p2, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    new-instance v0, Lc/a/c/b/a;

    iget-object v1, p0, Lc/a/c/b/b;->d:Lc/a/c/b/b$b;

    iget v1, v1, Lc/a/c/b/b$b;->b:I

    iget-object v2, p0, Lc/a/c/b/b;->c:Lio/flutter/embedding/engine/i/j;

    iget-object v3, p0, Lc/a/c/b/b;->f:Landroid/text/Editable;

    invoke-direct {v0, p1, v1, v2, v3}, Lc/a/c/b/a;-><init>(Landroid/view/View;ILio/flutter/embedding/engine/i/j;Landroid/text/Editable;)V

    iget-object p1, p0, Lc/a/c/b/b;->f:Landroid/text/Editable;

    invoke-static {p1}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result p1

    iput p1, p2, Landroid/view/inputmethod/EditorInfo;->initialSelStart:I

    iget-object p1, p0, Lc/a/c/b/b;->f:Landroid/text/Editable;

    invoke-static {p1}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result p1

    iput p1, p2, Landroid/view/inputmethod/EditorInfo;->initialSelEnd:I

    iput-object v0, p0, Lc/a/c/b/b;->h:Landroid/view/inputmethod/InputConnection;

    iget-object p1, p0, Lc/a/c/b/b;->h:Landroid/view/inputmethod/InputConnection;

    return-object p1
.end method

.method public a()V
    .locals 1

    iget-object v0, p0, Lc/a/c/b/b;->i:Lio/flutter/plugin/platform/i;

    invoke-virtual {v0}, Lio/flutter/plugin/platform/i;->d()V

    return-void
.end method

.method public a(I)V
    .locals 3

    iget-object v0, p0, Lc/a/c/b/b;->d:Lc/a/c/b/b$b;

    iget-object v1, v0, Lc/a/c/b/b$b;->a:Lc/a/c/b/b$b$a;

    sget-object v2, Lc/a/c/b/b$b$a;->c:Lc/a/c/b/b$b$a;

    if-ne v1, v2, :cond_0

    iget v0, v0, Lc/a/c/b/b$b;->b:I

    if-ne v0, p1, :cond_0

    new-instance p1, Lc/a/c/b/b$b;

    sget-object v0, Lc/a/c/b/b$b$a;->a:Lc/a/c/b/b$b$a;

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, Lc/a/c/b/b$b;-><init>(Lc/a/c/b/b$b$a;I)V

    iput-object p1, p0, Lc/a/c/b/b;->d:Lc/a/c/b/b$b;

    iget-object p1, p0, Lc/a/c/b/b;->a:Landroid/view/View;

    invoke-direct {p0, p1}, Lc/a/c/b/b;->a(Landroid/view/View;)V

    iget-object p1, p0, Lc/a/c/b/b;->b:Landroid/view/inputmethod/InputMethodManager;

    iget-object v0, p0, Lc/a/c/b/b;->a:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    iput-boolean v1, p0, Lc/a/c/b/b;->g:Z

    :cond_0
    return-void
.end method

.method a(ILio/flutter/embedding/engine/i/j$b;)V
    .locals 2

    new-instance v0, Lc/a/c/b/b$b;

    sget-object v1, Lc/a/c/b/b$b$a;->b:Lc/a/c/b/b$b$a;

    invoke-direct {v0, v1, p1}, Lc/a/c/b/b$b;-><init>(Lc/a/c/b/b$b$a;I)V

    iput-object v0, p0, Lc/a/c/b/b;->d:Lc/a/c/b/b$b;

    iput-object p2, p0, Lc/a/c/b/b;->e:Lio/flutter/embedding/engine/i/j$b;

    invoke-static {}, Landroid/text/Editable$Factory;->getInstance()Landroid/text/Editable$Factory;

    move-result-object p1

    const-string p2, ""

    invoke-virtual {p1, p2}, Landroid/text/Editable$Factory;->newEditable(Ljava/lang/CharSequence;)Landroid/text/Editable;

    move-result-object p1

    iput-object p1, p0, Lc/a/c/b/b;->f:Landroid/text/Editable;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lc/a/c/b/b;->g:Z

    invoke-virtual {p0}, Lc/a/c/b/b;->e()V

    return-void
.end method

.method a(Landroid/view/View;Lio/flutter/embedding/engine/i/j$e;)V
    .locals 8

    iget-boolean v0, p0, Lc/a/c/b/b;->j:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lc/a/c/b/b;->g:Z

    if-nez v0, :cond_0

    iget-object v0, p2, Lio/flutter/embedding/engine/i/j$e;->a:Ljava/lang/String;

    iget-object v2, p0, Lc/a/c/b/b;->f:Landroid/text/Editable;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p2}, Lc/a/c/b/b;->a(Lio/flutter/embedding/engine/i/j$e;)V

    iget-object v2, p0, Lc/a/c/b/b;->b:Landroid/view/inputmethod/InputMethodManager;

    iget-object v3, p0, Lc/a/c/b/b;->a:Landroid/view/View;

    iget-object p1, p0, Lc/a/c/b/b;->f:Landroid/text/Editable;

    invoke-static {p1}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result p1

    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result v4

    iget-object p1, p0, Lc/a/c/b/b;->f:Landroid/text/Editable;

    invoke-static {p1}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result p1

    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result v5

    iget-object p1, p0, Lc/a/c/b/b;->f:Landroid/text/Editable;

    invoke-static {p1}, Landroid/view/inputmethod/BaseInputConnection;->getComposingSpanStart(Landroid/text/Spannable;)I

    move-result v6

    iget-object p1, p0, Lc/a/c/b/b;->f:Landroid/text/Editable;

    invoke-static {p1}, Landroid/view/inputmethod/BaseInputConnection;->getComposingSpanEnd(Landroid/text/Spannable;)I

    move-result v7

    invoke-virtual/range {v2 .. v7}, Landroid/view/inputmethod/InputMethodManager;->updateSelection(Landroid/view/View;IIII)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lc/a/c/b/b;->f:Landroid/text/Editable;

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v2

    iget-object v3, p2, Lio/flutter/embedding/engine/i/j$e;->a:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v3}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    invoke-direct {p0, p2}, Lc/a/c/b/b;->a(Lio/flutter/embedding/engine/i/j$e;)V

    iget-object p2, p0, Lc/a/c/b/b;->b:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p2, p1}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    iput-boolean v1, p0, Lc/a/c/b/b;->g:Z

    :goto_0
    return-void
.end method

.method public b()Landroid/view/inputmethod/InputMethodManager;
    .locals 1

    iget-object v0, p0, Lc/a/c/b/b;->b:Landroid/view/inputmethod/InputMethodManager;

    return-object v0
.end method

.method public c()Landroid/view/inputmethod/InputConnection;
    .locals 1

    iget-object v0, p0, Lc/a/c/b/b;->h:Landroid/view/inputmethod/InputConnection;

    return-object v0
.end method

.method public d()V
    .locals 2

    iget-object v0, p0, Lc/a/c/b/b;->d:Lc/a/c/b/b$b;

    iget-object v0, v0, Lc/a/c/b/b$b;->a:Lc/a/c/b/b$b$a;

    sget-object v1, Lc/a/c/b/b$b$a;->c:Lc/a/c/b/b$b$a;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lc/a/c/b/b;->k:Z

    :cond_0
    return-void
.end method

.method public e()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lc/a/c/b/b;->k:Z

    return-void
.end method
