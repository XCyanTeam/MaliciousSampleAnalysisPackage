.class Lc/a/c/b/a;
.super Landroid/view/inputmethod/BaseInputConnection;
.source ""


# instance fields
.field private final a:Landroid/view/View;

.field private final b:I

.field private final c:Lio/flutter/embedding/engine/i/j;

.field private final d:Landroid/text/Editable;

.field private e:I

.field private f:Landroid/view/inputmethod/InputMethodManager;

.field private final g:Landroid/text/Layout;


# direct methods
.method public constructor <init>(Landroid/view/View;ILio/flutter/embedding/engine/i/j;Landroid/text/Editable;)V
    .locals 8

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/view/inputmethod/BaseInputConnection;-><init>(Landroid/view/View;Z)V

    iput-object p1, p0, Lc/a/c/b/a;->a:Landroid/view/View;

    iput p2, p0, Lc/a/c/b/a;->b:I

    iput-object p3, p0, Lc/a/c/b/a;->c:Lio/flutter/embedding/engine/i/j;

    iput-object p4, p0, Lc/a/c/b/a;->d:Landroid/text/Editable;

    const/4 p2, 0x0

    iput p2, p0, Lc/a/c/b/a;->e:I

    new-instance p2, Landroid/text/DynamicLayout;

    iget-object v1, p0, Lc/a/c/b/a;->d:Landroid/text/Editable;

    new-instance v2, Landroid/text/TextPaint;

    invoke-direct {v2}, Landroid/text/TextPaint;-><init>()V

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const v3, 0x7fffffff

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p2

    invoke-direct/range {v0 .. v7}, Landroid/text/DynamicLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object p2, p0, Lc/a/c/b/a;->g:Landroid/text/Layout;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "input_method"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    iput-object p1, p0, Lc/a/c/b/a;->f:Landroid/view/inputmethod/InputMethodManager;

    return-void
.end method

.method private static a(ILandroid/text/Editable;)I
    .locals 2

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result p1

    invoke-static {p1, p0}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    if-eq p1, p0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Text selection index was clamped ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "->"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ") to remain in bounds. This may not be your fault, as some keyboards may select outside of bounds."

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "flutter"

    invoke-static {v0, p0}, Lc/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return p1
.end method

.method private a()V
    .locals 10

    iget v0, p0, Lc/a/c/b/a;->e:I

    if-lez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lc/a/c/b/a;->d:Landroid/text/Editable;

    invoke-static {v0}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v0

    iget-object v1, p0, Lc/a/c/b/a;->d:Landroid/text/Editable;

    invoke-static {v1}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v7

    iget-object v1, p0, Lc/a/c/b/a;->d:Landroid/text/Editable;

    invoke-static {v1}, Landroid/view/inputmethod/BaseInputConnection;->getComposingSpanStart(Landroid/text/Spannable;)I

    move-result v8

    iget-object v1, p0, Lc/a/c/b/a;->d:Landroid/text/Editable;

    invoke-static {v1}, Landroid/view/inputmethod/BaseInputConnection;->getComposingSpanEnd(Landroid/text/Spannable;)I

    move-result v9

    iget-object v1, p0, Lc/a/c/b/a;->f:Landroid/view/inputmethod/InputMethodManager;

    iget-object v2, p0, Lc/a/c/b/a;->a:Landroid/view/View;

    move v3, v0

    move v4, v7

    move v5, v8

    move v6, v9

    invoke-virtual/range {v1 .. v6}, Landroid/view/inputmethod/InputMethodManager;->updateSelection(Landroid/view/View;IIII)V

    iget-object v1, p0, Lc/a/c/b/a;->c:Lio/flutter/embedding/engine/i/j;

    iget v2, p0, Lc/a/c/b/a;->b:I

    iget-object v3, p0, Lc/a/c/b/a;->d:Landroid/text/Editable;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    move v4, v0

    move v5, v7

    move v6, v8

    move v7, v9

    invoke-virtual/range {v1 .. v7}, Lio/flutter/embedding/engine/i/j;->a(ILjava/lang/String;IIII)V

    return-void
.end method


# virtual methods
.method public beginBatchEdit()Z
    .locals 1

    iget v0, p0, Lc/a/c/b/a;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lc/a/c/b/a;->e:I

    invoke-super {p0}, Landroid/view/inputmethod/BaseInputConnection;->beginBatchEdit()Z

    move-result v0

    return v0
.end method

.method public commitText(Ljava/lang/CharSequence;I)Z
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/view/inputmethod/BaseInputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    move-result p1

    invoke-direct {p0}, Lc/a/c/b/a;->a()V

    return p1
.end method

.method public deleteSurroundingText(II)Z
    .locals 2

    iget-object v0, p0, Lc/a/c/b/a;->d:Landroid/text/Editable;

    invoke-static {v0}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/inputmethod/BaseInputConnection;->deleteSurroundingText(II)Z

    move-result p1

    invoke-direct {p0}, Lc/a/c/b/a;->a()V

    return p1
.end method

.method public endBatchEdit()Z
    .locals 2

    invoke-super {p0}, Landroid/view/inputmethod/BaseInputConnection;->endBatchEdit()Z

    move-result v0

    iget v1, p0, Lc/a/c/b/a;->e:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lc/a/c/b/a;->e:I

    invoke-direct {p0}, Lc/a/c/b/a;->a()V

    return v0
.end method

.method public getEditable()Landroid/text/Editable;
    .locals 1

    iget-object v0, p0, Lc/a/c/b/a;->d:Landroid/text/Editable;

    return-object v0
.end method

.method public performEditorAction(I)Z
    .locals 2

    const/4 v0, 0x1

    if-eqz p1, :cond_6

    if-eq p1, v0, :cond_5

    const/4 v1, 0x2

    if-eq p1, v1, :cond_4

    const/4 v1, 0x3

    if-eq p1, v1, :cond_3

    const/4 v1, 0x4

    if-eq p1, v1, :cond_2

    const/4 v1, 0x5

    if-eq p1, v1, :cond_1

    const/4 v1, 0x7

    if-eq p1, v1, :cond_0

    iget-object p1, p0, Lc/a/c/b/a;->c:Lio/flutter/embedding/engine/i/j;

    iget v1, p0, Lc/a/c/b/a;->b:I

    invoke-virtual {p1, v1}, Lio/flutter/embedding/engine/i/j;->a(I)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lc/a/c/b/a;->c:Lio/flutter/embedding/engine/i/j;

    iget v1, p0, Lc/a/c/b/a;->b:I

    invoke-virtual {p1, v1}, Lio/flutter/embedding/engine/i/j;->e(I)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lc/a/c/b/a;->c:Lio/flutter/embedding/engine/i/j;

    iget v1, p0, Lc/a/c/b/a;->b:I

    invoke-virtual {p1, v1}, Lio/flutter/embedding/engine/i/j;->d(I)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lc/a/c/b/a;->c:Lio/flutter/embedding/engine/i/j;

    iget v1, p0, Lc/a/c/b/a;->b:I

    invoke-virtual {p1, v1}, Lio/flutter/embedding/engine/i/j;->g(I)V

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lc/a/c/b/a;->c:Lio/flutter/embedding/engine/i/j;

    iget v1, p0, Lc/a/c/b/a;->b:I

    invoke-virtual {p1, v1}, Lio/flutter/embedding/engine/i/j;->f(I)V

    goto :goto_0

    :cond_4
    iget-object p1, p0, Lc/a/c/b/a;->c:Lio/flutter/embedding/engine/i/j;

    iget v1, p0, Lc/a/c/b/a;->b:I

    invoke-virtual {p1, v1}, Lio/flutter/embedding/engine/i/j;->b(I)V

    goto :goto_0

    :cond_5
    iget-object p1, p0, Lc/a/c/b/a;->c:Lio/flutter/embedding/engine/i/j;

    iget v1, p0, Lc/a/c/b/a;->b:I

    invoke-virtual {p1, v1}, Lio/flutter/embedding/engine/i/j;->c(I)V

    goto :goto_0

    :cond_6
    iget-object p1, p0, Lc/a/c/b/a;->c:Lio/flutter/embedding/engine/i/j;

    iget v1, p0, Lc/a/c/b/a;->b:I

    invoke-virtual {p1, v1}, Lio/flutter/embedding/engine/i/j;->h(I)V

    :goto_0
    return v0
.end method

.method public sendKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 4

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_7

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v2, 0x43

    const/4 v3, 0x1

    if-ne v0, v2, :cond_2

    iget-object p1, p0, Lc/a/c/b/a;->d:Landroid/text/Editable;

    invoke-static {p1}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result p1

    iget-object v0, p0, Lc/a/c/b/a;->d:Landroid/text/Editable;

    invoke-static {p1, v0}, Lc/a/c/b/a;->a(ILandroid/text/Editable;)I

    move-result p1

    iget-object v0, p0, Lc/a/c/b/a;->d:Landroid/text/Editable;

    invoke-static {v0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v0

    iget-object v2, p0, Lc/a/c/b/a;->d:Landroid/text/Editable;

    invoke-static {v0, v2}, Lc/a/c/b/a;->a(ILandroid/text/Editable;)I

    move-result v0

    if-le v0, p1, :cond_0

    iget-object v1, p0, Lc/a/c/b/a;->d:Landroid/text/Editable;

    invoke-static {v1, p1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    iget-object v1, p0, Lc/a/c/b/a;->d:Landroid/text/Editable;

    invoke-interface {v1, p1, v0}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    invoke-direct {p0}, Lc/a/c/b/a;->a()V

    return v3

    :cond_0
    if-lez p1, :cond_7

    iget-object v0, p0, Lc/a/c/b/a;->g:Landroid/text/Layout;

    invoke-virtual {v0, p1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/text/Layout;->isRtlCharAt(I)Z

    move-result v0

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lc/a/c/b/a;->d:Landroid/text/Editable;

    iget-object v1, p0, Lc/a/c/b/a;->g:Landroid/text/Layout;

    invoke-static {v0, v1}, Landroid/text/Selection;->extendRight(Landroid/text/Spannable;Landroid/text/Layout;)Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lc/a/c/b/a;->d:Landroid/text/Editable;

    iget-object v1, p0, Lc/a/c/b/a;->g:Landroid/text/Layout;

    invoke-static {v0, v1}, Landroid/text/Selection;->extendLeft(Landroid/text/Spannable;Landroid/text/Layout;)Z
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    iget-object v0, p0, Lc/a/c/b/a;->d:Landroid/text/Editable;

    add-int/lit8 v1, p1, -0x1

    invoke-static {v0, p1, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    :goto_0
    iget-object p1, p0, Lc/a/c/b/a;->d:Landroid/text/Editable;

    invoke-static {p1}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result p1

    iget-object v0, p0, Lc/a/c/b/a;->d:Landroid/text/Editable;

    invoke-static {p1, v0}, Lc/a/c/b/a;->a(ILandroid/text/Editable;)I

    move-result p1

    iget-object v0, p0, Lc/a/c/b/a;->d:Landroid/text/Editable;

    invoke-static {v0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v0

    iget-object v1, p0, Lc/a/c/b/a;->d:Landroid/text/Editable;

    invoke-static {v0, v1}, Lc/a/c/b/a;->a(ILandroid/text/Editable;)I

    move-result v0

    iget-object v1, p0, Lc/a/c/b/a;->d:Landroid/text/Editable;

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v1, v2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    iget-object v1, p0, Lc/a/c/b/a;->d:Landroid/text/Editable;

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-interface {v1, v2, p1}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    invoke-direct {p0}, Lc/a/c/b/a;->a()V

    return v3

    :cond_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v2, 0x15

    if-ne v0, v2, :cond_3

    iget-object p1, p0, Lc/a/c/b/a;->d:Landroid/text/Editable;

    invoke-static {p1}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result p1

    sub-int/2addr p1, v3

    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-virtual {p0, p1, p1}, Lc/a/c/b/a;->setSelection(II)Z

    return v3

    :cond_3
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v2, 0x16

    if-ne v0, v2, :cond_4

    iget-object p1, p0, Lc/a/c/b/a;->d:Landroid/text/Editable;

    invoke-static {p1}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result p1

    add-int/2addr p1, v3

    iget-object v0, p0, Lc/a/c/b/a;->d:Landroid/text/Editable;

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-virtual {p0, p1, p1}, Lc/a/c/b/a;->setSelection(II)Z

    return v3

    :cond_4
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getUnicodeChar()I

    move-result p1

    if-eqz p1, :cond_6

    iget-object v0, p0, Lc/a/c/b/a;->d:Landroid/text/Editable;

    invoke-static {v0}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget-object v2, p0, Lc/a/c/b/a;->d:Landroid/text/Editable;

    invoke-static {v2}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    if-eq v1, v0, :cond_5

    iget-object v2, p0, Lc/a/c/b/a;->d:Landroid/text/Editable;

    invoke-interface {v2, v0, v1}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    :cond_5
    iget-object v1, p0, Lc/a/c/b/a;->d:Landroid/text/Editable;

    int-to-char p1, p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, v0, p1}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    add-int/2addr v0, v3

    invoke-virtual {p0, v0, v0}, Lc/a/c/b/a;->setSelection(II)Z

    :cond_6
    return v3

    :cond_7
    return v1
.end method

.method public setComposingRegion(II)Z
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/view/inputmethod/BaseInputConnection;->setComposingRegion(II)Z

    move-result p1

    invoke-direct {p0}, Lc/a/c/b/a;->a()V

    return p1
.end method

.method public setComposingText(Ljava/lang/CharSequence;I)Z
    .locals 1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2}, Landroid/view/inputmethod/BaseInputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    move-result p1

    goto :goto_0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/inputmethod/BaseInputConnection;->setComposingText(Ljava/lang/CharSequence;I)Z

    move-result p1

    :goto_0
    invoke-direct {p0}, Lc/a/c/b/a;->a()V

    return p1
.end method

.method public setSelection(II)Z
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/view/inputmethod/BaseInputConnection;->setSelection(II)Z

    move-result p1

    invoke-direct {p0}, Lc/a/c/b/a;->a()V

    return p1
.end method
