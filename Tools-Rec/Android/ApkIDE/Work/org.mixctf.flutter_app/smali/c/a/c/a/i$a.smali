.class final Lc/a/c/a/i$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/a/c/a/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/a/c/a/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "a"
.end annotation


# instance fields
.field private final a:Lc/a/c/a/i$c;

.field final synthetic b:Lc/a/c/a/i;


# direct methods
.method constructor <init>(Lc/a/c/a/i;Lc/a/c/a/i$c;)V
    .locals 0

    iput-object p1, p0, Lc/a/c/a/i$a;->b:Lc/a/c/a/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lc/a/c/a/i$a;->a:Lc/a/c/a/i$c;

    return-void
.end method


# virtual methods
.method public a(Ljava/nio/ByteBuffer;Lc/a/c/a/b$b;)V
    .locals 3

    iget-object v0, p0, Lc/a/c/a/i$a;->b:Lc/a/c/a/i;

    invoke-static {v0}, Lc/a/c/a/i;->a(Lc/a/c/a/i;)Lc/a/c/a/j;

    move-result-object v0

    invoke-interface {v0, p1}, Lc/a/c/a/j;->a(Ljava/nio/ByteBuffer;)Lc/a/c/a/h;

    move-result-object p1

    :try_start_0
    iget-object v0, p0, Lc/a/c/a/i$a;->a:Lc/a/c/a/i$c;

    new-instance v1, Lc/a/c/a/i$a$a;

    invoke-direct {v1, p0, p2}, Lc/a/c/a/i$a$a;-><init>(Lc/a/c/a/i$a;Lc/a/c/a/b$b;)V

    invoke-interface {v0, p1, v1}, Lc/a/c/a/i$c;->a(Lc/a/c/a/h;Lc/a/c/a/i$d;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MethodChannel#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lc/a/c/a/i$a;->b:Lc/a/c/a/i;

    invoke-static {v1}, Lc/a/c/a/i;->b(Lc/a/c/a/i;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Failed to handle method call"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v0, p0, Lc/a/c/a/i$a;->b:Lc/a/c/a/i;

    invoke-static {v0}, Lc/a/c/a/i;->a(Lc/a/c/a/i;)Lc/a/c/a/j;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    const-string v2, "error"

    invoke-interface {v0, v2, p1, v1}, Lc/a/c/a/j;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-interface {p2, p1}, Lc/a/c/a/b$b;->a(Ljava/nio/ByteBuffer;)V

    :goto_0
    return-void
.end method
