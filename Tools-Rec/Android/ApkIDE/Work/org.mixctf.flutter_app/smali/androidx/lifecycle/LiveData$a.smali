.class abstract Landroidx/lifecycle/LiveData$a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/lifecycle/LiveData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "a"
.end annotation


# instance fields
.field final a:Landroidx/lifecycle/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/j<",
            "-TT;>;"
        }
    .end annotation
.end field

.field b:Z

.field final synthetic c:Landroidx/lifecycle/LiveData;


# virtual methods
.method a(Z)V
    .locals 4

    iget-boolean v0, p0, Landroidx/lifecycle/LiveData$a;->b:Z

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Landroidx/lifecycle/LiveData$a;->b:Z

    iget-object p1, p0, Landroidx/lifecycle/LiveData$a;->c:Landroidx/lifecycle/LiveData;

    iget p1, p1, Landroidx/lifecycle/LiveData;->a:I

    const/4 v0, 0x1

    if-nez p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    iget-object v1, p0, Landroidx/lifecycle/LiveData$a;->c:Landroidx/lifecycle/LiveData;

    iget v2, v1, Landroidx/lifecycle/LiveData;->a:I

    iget-boolean v3, p0, Landroidx/lifecycle/LiveData$a;->b:Z

    if-eqz v3, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, -0x1

    :goto_1
    add-int/2addr v2, v0

    iput v2, v1, Landroidx/lifecycle/LiveData;->a:I

    if-eqz p1, :cond_3

    iget-boolean p1, p0, Landroidx/lifecycle/LiveData$a;->b:Z

    if-eqz p1, :cond_3

    iget-object p1, p0, Landroidx/lifecycle/LiveData$a;->c:Landroidx/lifecycle/LiveData;

    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->a()V

    :cond_3
    iget-object p1, p0, Landroidx/lifecycle/LiveData$a;->c:Landroidx/lifecycle/LiveData;

    iget v0, p1, Landroidx/lifecycle/LiveData;->a:I

    if-nez v0, :cond_4

    iget-boolean v0, p0, Landroidx/lifecycle/LiveData$a;->b:Z

    if-nez v0, :cond_4

    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->b()V

    :cond_4
    iget-boolean p1, p0, Landroidx/lifecycle/LiveData$a;->b:Z

    if-eqz p1, :cond_5

    iget-object p1, p0, Landroidx/lifecycle/LiveData$a;->c:Landroidx/lifecycle/LiveData;

    invoke-virtual {p1, p0}, Landroidx/lifecycle/LiveData;->a(Landroidx/lifecycle/LiveData$a;)V

    :cond_5
    return-void
.end method
