.class Lb/b/a/c$i$c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lb/b/a/c$i;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lb/b/a/c$i;


# direct methods
.method constructor <init>(Lb/b/a/c$i;)V
    .locals 0

    iput-object p1, p0, Lb/b/a/c$i$c;->a:Lb/b/a/c$i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lb/b/a/c$i$c;->a:Lb/b/a/c$i;

    invoke-static {v0}, Lb/b/a/c$i;->a(Lb/b/a/c$i;)Lc/a/c/a/i$d;

    move-result-object v0

    invoke-interface {v0}, Lc/a/c/a/i$d;->a()V

    return-void
.end method
