.class Lb/b/a/c$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lb/b/a/c;->e(Lc/a/c/a/h;Lc/a/c/a/i$d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lc/a/c/a/h;

.field final synthetic b:Lb/b/a/c$i;

.field final synthetic c:Lb/b/a/a;

.field final synthetic d:Lb/b/a/c;


# direct methods
.method constructor <init>(Lb/b/a/c;Lc/a/c/a/h;Lb/b/a/c$i;Lb/b/a/a;)V
    .locals 0

    iput-object p1, p0, Lb/b/a/c$b;->d:Lb/b/a/c;

    iput-object p2, p0, Lb/b/a/c$b;->a:Lc/a/c/a/h;

    iput-object p3, p0, Lb/b/a/c$b;->b:Lb/b/a/c$i;

    iput-object p4, p0, Lb/b/a/c$b;->c:Lb/b/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    new-instance v0, Lb/b/a/f/e;

    iget-object v1, p0, Lb/b/a/c$b;->a:Lc/a/c/a/h;

    iget-object v2, p0, Lb/b/a/c$b;->b:Lb/b/a/c$i;

    invoke-direct {v0, v1, v2}, Lb/b/a/f/e;-><init>(Lc/a/c/a/h;Lc/a/c/a/i$d;)V

    invoke-virtual {v0}, Lb/b/a/f/b;->b()Z

    move-result v1

    invoke-virtual {v0}, Lb/b/a/f/b;->d()Z

    move-result v0

    iget-object v2, p0, Lb/b/a/c$b;->a:Lc/a/c/a/h;

    const-string v3, "operations"

    invoke-virtual {v2, v3}, Lc/a/c/a/h;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    new-instance v6, Lb/b/a/f/c;

    invoke-direct {v6, v4, v1}, Lb/b/a/f/c;-><init>(Ljava/util/Map;Z)V

    invoke-virtual {v6}, Lb/b/a/f/c;->f()Ljava/lang/String;

    move-result-object v4

    const/4 v7, -0x1

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v8

    const/4 v9, 0x3

    const/4 v10, 0x2

    const/4 v11, 0x1

    sparse-switch v8, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v8, "query"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    const/4 v7, 0x2

    goto :goto_1

    :sswitch_1
    const-string v8, "update"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    const/4 v7, 0x3

    goto :goto_1

    :sswitch_2
    const-string v8, "insert"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    const/4 v7, 0x1

    goto :goto_1

    :sswitch_3
    const-string v8, "execute"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    const/4 v7, 0x0

    :cond_0
    :goto_1
    if-eqz v7, :cond_a

    if-eq v7, v11, :cond_7

    if-eq v7, v10, :cond_4

    if-eq v7, v9, :cond_1

    iget-object v0, p0, Lb/b/a/c$b;->b:Lb/b/a/c$i;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Batch method \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\' not supported"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "bad_param"

    invoke-virtual {v0, v2, v1, v5}, Lb/b/a/c$i;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :cond_1
    iget-object v4, p0, Lb/b/a/c$b;->d:Lb/b/a/c;

    iget-object v5, p0, Lb/b/a/c$b;->c:Lb/b/a/a;

    invoke-static {v4, v5, v6}, Lb/b/a/c;->d(Lb/b/a/c;Lb/b/a/a;Lb/b/a/f/f;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_3

    :cond_2
    if-eqz v0, :cond_3

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lb/b/a/c$b;->b:Lb/b/a/c$i;

    invoke-virtual {v6, v0}, Lb/b/a/f/c;->a(Lc/a/c/a/i$d;)V

    return-void

    :cond_4
    iget-object v4, p0, Lb/b/a/c$b;->d:Lb/b/a/c;

    iget-object v5, p0, Lb/b/a/c$b;->c:Lb/b/a/a;

    invoke-static {v4, v5, v6}, Lb/b/a/c;->a(Lb/b/a/c;Lb/b/a/a;Lb/b/a/f/f;)Z

    move-result v4

    if-eqz v4, :cond_5

    goto :goto_3

    :cond_5
    if-eqz v0, :cond_6

    goto :goto_2

    :cond_6
    iget-object v0, p0, Lb/b/a/c$b;->b:Lb/b/a/c$i;

    invoke-virtual {v6, v0}, Lb/b/a/f/c;->a(Lc/a/c/a/i$d;)V

    return-void

    :cond_7
    iget-object v4, p0, Lb/b/a/c$b;->d:Lb/b/a/c;

    iget-object v5, p0, Lb/b/a/c$b;->c:Lb/b/a/a;

    invoke-static {v4, v5, v6}, Lb/b/a/c;->c(Lb/b/a/c;Lb/b/a/a;Lb/b/a/f/f;)Z

    move-result v4

    if-eqz v4, :cond_8

    goto :goto_3

    :cond_8
    if-eqz v0, :cond_9

    :goto_2
    goto :goto_4

    :cond_9
    iget-object v0, p0, Lb/b/a/c$b;->b:Lb/b/a/c$i;

    invoke-virtual {v6, v0}, Lb/b/a/f/c;->a(Lc/a/c/a/i$d;)V

    return-void

    :cond_a
    iget-object v4, p0, Lb/b/a/c$b;->d:Lb/b/a/c;

    iget-object v5, p0, Lb/b/a/c$b;->c:Lb/b/a/a;

    invoke-static {v4, v5, v6}, Lb/b/a/c;->b(Lb/b/a/c;Lb/b/a/a;Lb/b/a/f/f;)Z

    move-result v4

    if-eqz v4, :cond_b

    :goto_3
    invoke-virtual {v6, v3}, Lb/b/a/f/c;->b(Ljava/util/List;)V

    goto/16 :goto_0

    :cond_b
    if-eqz v0, :cond_c

    :goto_4
    invoke-virtual {v6, v3}, Lb/b/a/f/c;->a(Ljava/util/List;)V

    goto/16 :goto_0

    :cond_c
    iget-object v0, p0, Lb/b/a/c$b;->b:Lb/b/a/c$i;

    invoke-virtual {v6, v0}, Lb/b/a/f/c;->a(Lc/a/c/a/i$d;)V

    return-void

    :cond_d
    iget-object v0, p0, Lb/b/a/c$b;->b:Lb/b/a/c$i;

    if-eqz v1, :cond_e

    invoke-virtual {v0, v5}, Lb/b/a/c$i;->a(Ljava/lang/Object;)V

    goto :goto_5

    :cond_e
    invoke-virtual {v0, v3}, Lb/b/a/c$i;->a(Ljava/lang/Object;)V

    :goto_5
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x4ea7088b -> :sswitch_3
        -0x468f3d47 -> :sswitch_2
        -0x31ffc737 -> :sswitch_1
        0x66f18c8 -> :sswitch_0
    .end sparse-switch
.end method
