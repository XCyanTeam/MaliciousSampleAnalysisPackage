.class Lb/b/a/f/e$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lb/b/a/f/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/b/a/f/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final a:Lc/a/c/a/i$d;


# direct methods
.method constructor <init>(Lb/b/a/f/e;Lc/a/c/a/i$d;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lb/b/a/f/e$a;->a:Lc/a/c/a/i$d;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lb/b/a/f/e$a;->a:Lc/a/c/a/i$d;

    invoke-interface {v0, p1}, Lc/a/c/a/i$d;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lb/b/a/f/e$a;->a:Lc/a/c/a/i$d;

    invoke-interface {v0, p1, p2, p3}, Lc/a/c/a/i$d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
