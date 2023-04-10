.class Lb/b/a/c$i;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/a/c/a/i$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/b/a/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "i"
.end annotation


# instance fields
.field final a:Landroid/os/Handler;

.field private final b:Lc/a/c/a/i$d;


# direct methods
.method private constructor <init>(Lb/b/a/c;Lc/a/c/a/i$d;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lb/b/a/c$i;->a:Landroid/os/Handler;

    iput-object p2, p0, Lb/b/a/c$i;->b:Lc/a/c/a/i$d;

    return-void
.end method

.method synthetic constructor <init>(Lb/b/a/c;Lc/a/c/a/i$d;Lb/b/a/c$a;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lb/b/a/c$i;-><init>(Lb/b/a/c;Lc/a/c/a/i$d;)V

    return-void
.end method

.method static synthetic a(Lb/b/a/c$i;)Lc/a/c/a/i$d;
    .locals 0

    iget-object p0, p0, Lb/b/a/c$i;->b:Lc/a/c/a/i$d;

    return-object p0
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lb/b/a/c$i;->a:Landroid/os/Handler;

    new-instance v1, Lb/b/a/c$i$c;

    invoke-direct {v1, p0}, Lb/b/a/c$i$c;-><init>(Lb/b/a/c$i;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public a(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lb/b/a/c$i;->a:Landroid/os/Handler;

    new-instance v1, Lb/b/a/c$i$a;

    invoke-direct {v1, p0, p1}, Lb/b/a/c$i$a;-><init>(Lb/b/a/c$i;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lb/b/a/c$i;->a:Landroid/os/Handler;

    new-instance v1, Lb/b/a/c$i$b;

    invoke-direct {v1, p0, p1, p2, p3}, Lb/b/a/c$i$b;-><init>(Lb/b/a/c$i;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
