.class public Lb/a/a/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/a/c/a/i$c;


# instance fields
.field private final a:Landroid/net/ConnectivityManager;


# direct methods
.method private constructor <init>(Lc/a/c/a/k$c;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p1}, Lc/a/c/a/k$c;->d()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    iput-object p1, p0, Lb/a/a/a;->a:Landroid/net/ConnectivityManager;

    return-void
.end method

.method private a(Landroid/net/ConnectivityManager;Lc/a/c/a/i$d;)V
    .locals 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/net/ConnectivityManager;->getDefaultProxy()Landroid/net/ProxyInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p1}, Landroid/net/ProxyInfo;->getHost()Ljava/lang/String;

    move-result-object v1

    const-string v2, "host"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/net/ProxyInfo;->getPort()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "port"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p2, v0}, Lc/a/c/a/i$d;->a(Ljava/lang/Object;)V

    return-void

    :cond_0
    const/4 p1, 0x0

    invoke-interface {p2, p1}, Lc/a/c/a/i$d;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public static a(Lc/a/c/a/k$c;)V
    .locals 3

    new-instance v0, Lc/a/c/a/i;

    invoke-interface {p0}, Lc/a/c/a/k$c;->c()Lc/a/c/a/b;

    move-result-object v1

    const-string v2, "system_proxy"

    invoke-direct {v0, v1, v2}, Lc/a/c/a/i;-><init>(Lc/a/c/a/b;Ljava/lang/String;)V

    new-instance v1, Lb/a/a/a;

    invoke-direct {v1, p0}, Lb/a/a/a;-><init>(Lc/a/c/a/k$c;)V

    invoke-virtual {v0, v1}, Lc/a/c/a/i;->a(Lc/a/c/a/i$c;)V

    return-void
.end method


# virtual methods
.method public a(Lc/a/c/a/h;Lc/a/c/a/i$d;)V
    .locals 1

    iget-object p1, p1, Lc/a/c/a/h;->a:Ljava/lang/String;

    const-string v0, "getProxySettings"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lb/a/a/a;->a:Landroid/net/ConnectivityManager;

    invoke-direct {p0, p1, p2}, Lb/a/a/a;->a(Landroid/net/ConnectivityManager;Lc/a/c/a/i$d;)V

    goto :goto_0

    :cond_0
    invoke-interface {p2}, Lc/a/c/a/i$d;->a()V

    :goto_0
    return-void
.end method
