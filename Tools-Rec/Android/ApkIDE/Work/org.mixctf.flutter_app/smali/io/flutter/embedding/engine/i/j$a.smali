.class Lio/flutter/embedding/engine/i/j$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/a/c/a/i$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/flutter/embedding/engine/i/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/flutter/embedding/engine/i/j;


# direct methods
.method constructor <init>(Lio/flutter/embedding/engine/i/j;)V
    .locals 0

    iput-object p1, p0, Lio/flutter/embedding/engine/i/j$a;->a:Lio/flutter/embedding/engine/i/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lc/a/c/a/h;Lc/a/c/a/i$d;)V
    .locals 9

    iget-object v0, p0, Lio/flutter/embedding/engine/i/j$a;->a:Lio/flutter/embedding/engine/i/j;

    invoke-static {v0}, Lio/flutter/embedding/engine/i/j;->a(Lio/flutter/embedding/engine/i/j;)Lio/flutter/embedding/engine/i/j$f;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p1, Lc/a/c/a/h;->a:Ljava/lang/String;

    iget-object p1, p1, Lc/a/c/a/h;->b:Ljava/lang/Object;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\' message."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TextInputChannel"

    invoke-static {v2, v1}, Lc/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x5

    const/4 v5, 0x4

    const/4 v6, 0x3

    const/4 v7, 0x2

    const/4 v8, 0x1

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v2, "TextInput.clearClient"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x5

    goto :goto_0

    :sswitch_1
    const-string v2, "TextInput.show"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :sswitch_2
    const-string v2, "TextInput.hide"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :sswitch_3
    const-string v2, "TextInput.setClient"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    goto :goto_0

    :sswitch_4
    const-string v2, "TextInput.setEditingState"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x4

    goto :goto_0

    :sswitch_5
    const-string v2, "TextInput.setPlatformViewClient"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x3

    :cond_1
    :goto_0
    const/4 v0, 0x0

    if-eqz v1, :cond_7

    if-eq v1, v8, :cond_6

    const-string v2, "error"

    if-eq v1, v7, :cond_5

    if-eq v1, v6, :cond_4

    if-eq v1, v5, :cond_3

    if-eq v1, v4, :cond_2

    invoke-interface {p2}, Lc/a/c/a/i$d;->a()V

    goto/16 :goto_4

    :cond_2
    iget-object p1, p0, Lio/flutter/embedding/engine/i/j$a;->a:Lio/flutter/embedding/engine/i/j;

    invoke-static {p1}, Lio/flutter/embedding/engine/i/j;->a(Lio/flutter/embedding/engine/i/j;)Lio/flutter/embedding/engine/i/j$f;

    move-result-object p1

    invoke-interface {p1}, Lio/flutter/embedding/engine/i/j$f;->b()V

    goto :goto_3

    :cond_3
    :try_start_0
    check-cast p1, Lorg/json/JSONObject;

    iget-object v1, p0, Lio/flutter/embedding/engine/i/j$a;->a:Lio/flutter/embedding/engine/i/j;

    invoke-static {v1}, Lio/flutter/embedding/engine/i/j;->a(Lio/flutter/embedding/engine/i/j;)Lio/flutter/embedding/engine/i/j$f;

    move-result-object v1

    invoke-static {p1}, Lio/flutter/embedding/engine/i/j$e;->a(Lorg/json/JSONObject;)Lio/flutter/embedding/engine/i/j$e;

    move-result-object p1

    invoke-interface {v1, p1}, Lio/flutter/embedding/engine/i/j$f;->a(Lio/flutter/embedding/engine/i/j$e;)V

    invoke-interface {p2, v0}, Lc/a/c/a/i$d;->a(Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_4
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object p2, p0, Lio/flutter/embedding/engine/i/j$a;->a:Lio/flutter/embedding/engine/i/j;

    invoke-static {p2}, Lio/flutter/embedding/engine/i/j;->a(Lio/flutter/embedding/engine/i/j;)Lio/flutter/embedding/engine/i/j$f;

    move-result-object p2

    invoke-interface {p2, p1}, Lio/flutter/embedding/engine/i/j$f;->a(I)V

    goto :goto_4

    :cond_5
    :try_start_1
    check-cast p1, Lorg/json/JSONArray;

    invoke-virtual {p1, v3}, Lorg/json/JSONArray;->getInt(I)I

    move-result v1

    invoke-virtual {p1, v8}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object p1

    iget-object v3, p0, Lio/flutter/embedding/engine/i/j$a;->a:Lio/flutter/embedding/engine/i/j;

    invoke-static {v3}, Lio/flutter/embedding/engine/i/j;->a(Lio/flutter/embedding/engine/i/j;)Lio/flutter/embedding/engine/i/j$f;

    move-result-object v3

    invoke-static {p1}, Lio/flutter/embedding/engine/i/j$b;->a(Lorg/json/JSONObject;)Lio/flutter/embedding/engine/i/j$b;

    move-result-object p1

    invoke-interface {v3, v1, p1}, Lio/flutter/embedding/engine/i/j$f;->a(ILio/flutter/embedding/engine/i/j$b;)V

    invoke-interface {p2, v0}, Lc/a/c/a/i$d;->a(Ljava/lang/Object;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4

    :catch_1
    move-exception p1

    goto :goto_1

    :catch_2
    move-exception p1

    :goto_1
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    :goto_2
    invoke-interface {p2, v2, p1, v0}, Lc/a/c/a/i$d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_4

    :cond_6
    iget-object p1, p0, Lio/flutter/embedding/engine/i/j$a;->a:Lio/flutter/embedding/engine/i/j;

    invoke-static {p1}, Lio/flutter/embedding/engine/i/j;->a(Lio/flutter/embedding/engine/i/j;)Lio/flutter/embedding/engine/i/j$f;

    move-result-object p1

    invoke-interface {p1}, Lio/flutter/embedding/engine/i/j$f;->a()V

    goto :goto_3

    :cond_7
    iget-object p1, p0, Lio/flutter/embedding/engine/i/j$a;->a:Lio/flutter/embedding/engine/i/j;

    invoke-static {p1}, Lio/flutter/embedding/engine/i/j;->a(Lio/flutter/embedding/engine/i/j;)Lio/flutter/embedding/engine/i/j$f;

    move-result-object p1

    invoke-interface {p1}, Lio/flutter/embedding/engine/i/j$f;->c()V

    :goto_3
    invoke-interface {p2, v0}, Lc/a/c/a/i$d;->a(Ljava/lang/Object;)V

    :goto_4
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x6a0a6d0c -> :sswitch_5
        -0x3c861a16 -> :sswitch_4
        -0x23d2364 -> :sswitch_3
        0x101f2613 -> :sswitch_2
        0x102423ce -> :sswitch_1
        0x71834287 -> :sswitch_0
    .end sparse-switch
.end method
