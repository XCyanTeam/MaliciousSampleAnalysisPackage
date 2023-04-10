.class Lb/b/a/c$d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lb/b/a/c;->j(Lc/a/c/a/h;Lc/a/c/a/i$d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lb/b/a/a;

.field final synthetic b:Lc/a/c/a/h;

.field final synthetic c:Lb/b/a/c$i;

.field final synthetic d:Lb/b/a/c;


# direct methods
.method constructor <init>(Lb/b/a/c;Lb/b/a/a;Lc/a/c/a/h;Lb/b/a/c$i;)V
    .locals 0

    iput-object p1, p0, Lb/b/a/c$d;->d:Lb/b/a/c;

    iput-object p2, p0, Lb/b/a/c$d;->a:Lb/b/a/a;

    iput-object p3, p0, Lb/b/a/c$d;->b:Lc/a/c/a/h;

    iput-object p4, p0, Lb/b/a/c$d;->c:Lb/b/a/c$i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lb/b/a/c$d;->d:Lb/b/a/c;

    iget-object v1, p0, Lb/b/a/c$d;->a:Lb/b/a/a;

    iget-object v2, p0, Lb/b/a/c$d;->b:Lc/a/c/a/h;

    iget-object v3, p0, Lb/b/a/c$d;->c:Lb/b/a/c$i;

    invoke-static {v0, v1, v2, v3}, Lb/b/a/c;->a(Lb/b/a/c;Lb/b/a/a;Lc/a/c/a/h;Lc/a/c/a/i$d;)Lb/b/a/a;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lb/b/a/c$d;->c:Lb/b/a/c$i;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lb/b/a/c$i;->a(Ljava/lang/Object;)V

    return-void
.end method
