.class public Lio/flutter/embedding/engine/h/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lio/flutter/view/f;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/flutter/embedding/engine/h/a$c;,
        Lio/flutter/embedding/engine/h/a$b;
    }
.end annotation


# instance fields
.field private final a:Lio/flutter/embedding/engine/FlutterJNI;

.field private final b:Ljava/util/concurrent/atomic/AtomicLong;

.field private c:Landroid/view/Surface;

.field private d:Z

.field private final e:Lio/flutter/embedding/engine/h/b;


# direct methods
.method public constructor <init>(Lio/flutter/embedding/engine/FlutterJNI;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lio/flutter/embedding/engine/h/a;->b:Ljava/util/concurrent/atomic/AtomicLong;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/flutter/embedding/engine/h/a;->d:Z

    new-instance v0, Lio/flutter/embedding/engine/h/a$a;

    invoke-direct {v0, p0}, Lio/flutter/embedding/engine/h/a$a;-><init>(Lio/flutter/embedding/engine/h/a;)V

    iput-object v0, p0, Lio/flutter/embedding/engine/h/a;->e:Lio/flutter/embedding/engine/h/b;

    iput-object p1, p0, Lio/flutter/embedding/engine/h/a;->a:Lio/flutter/embedding/engine/FlutterJNI;

    iget-object p1, p0, Lio/flutter/embedding/engine/h/a;->a:Lio/flutter/embedding/engine/FlutterJNI;

    iget-object v0, p0, Lio/flutter/embedding/engine/h/a;->e:Lio/flutter/embedding/engine/h/b;

    invoke-virtual {p1, v0}, Lio/flutter/embedding/engine/FlutterJNI;->addIsDisplayingFlutterUiListener(Lio/flutter/embedding/engine/h/b;)V

    return-void
.end method

.method private a(J)V
    .locals 1

    iget-object v0, p0, Lio/flutter/embedding/engine/h/a;->a:Lio/flutter/embedding/engine/FlutterJNI;

    invoke-virtual {v0, p1, p2}, Lio/flutter/embedding/engine/FlutterJNI;->markTextureFrameAvailable(J)V

    return-void
.end method

.method private a(JLandroid/graphics/SurfaceTexture;)V
    .locals 1

    iget-object v0, p0, Lio/flutter/embedding/engine/h/a;->a:Lio/flutter/embedding/engine/FlutterJNI;

    invoke-virtual {v0, p1, p2, p3}, Lio/flutter/embedding/engine/FlutterJNI;->registerTexture(JLandroid/graphics/SurfaceTexture;)V

    return-void
.end method

.method static synthetic a(Lio/flutter/embedding/engine/h/a;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lio/flutter/embedding/engine/h/a;->a(J)V

    return-void
.end method

.method static synthetic a(Lio/flutter/embedding/engine/h/a;Z)Z
    .locals 0

    iput-boolean p1, p0, Lio/flutter/embedding/engine/h/a;->d:Z

    return p1
.end method

.method private b(J)V
    .locals 1

    iget-object v0, p0, Lio/flutter/embedding/engine/h/a;->a:Lio/flutter/embedding/engine/FlutterJNI;

    invoke-virtual {v0, p1, p2}, Lio/flutter/embedding/engine/FlutterJNI;->unregisterTexture(J)V

    return-void
.end method

.method static synthetic b(Lio/flutter/embedding/engine/h/a;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lio/flutter/embedding/engine/h/a;->b(J)V

    return-void
.end method


# virtual methods
.method public a()Lio/flutter/view/f$a;
    .locals 6

    const-string v0, "FlutterRenderer"

    const-string v1, "Creating a SurfaceTexture."

    invoke-static {v0, v1}, Lc/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Landroid/graphics/SurfaceTexture;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    invoke-virtual {v1}, Landroid/graphics/SurfaceTexture;->detachFromGLContext()V

    new-instance v2, Lio/flutter/embedding/engine/h/a$b;

    iget-object v3, p0, Lio/flutter/embedding/engine/h/a;->b:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    move-result-wide v3

    invoke-direct {v2, p0, v3, v4, v1}, Lio/flutter/embedding/engine/h/a$b;-><init>(Lio/flutter/embedding/engine/h/a;JLandroid/graphics/SurfaceTexture;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "New SurfaceTexture ID: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lio/flutter/embedding/engine/h/a$b;->b()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lc/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Lio/flutter/embedding/engine/h/a$b;->b()J

    move-result-wide v3

    invoke-direct {p0, v3, v4, v1}, Lio/flutter/embedding/engine/h/a;->a(JLandroid/graphics/SurfaceTexture;)V

    return-object v2
.end method

.method public a(II)V
    .locals 1

    iget-object v0, p0, Lio/flutter/embedding/engine/h/a;->a:Lio/flutter/embedding/engine/FlutterJNI;

    invoke-virtual {v0, p1, p2}, Lio/flutter/embedding/engine/FlutterJNI;->onSurfaceChanged(II)V

    return-void
.end method

.method public a(Landroid/view/Surface;)V
    .locals 1

    iget-object v0, p0, Lio/flutter/embedding/engine/h/a;->c:Landroid/view/Surface;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lio/flutter/embedding/engine/h/a;->d()V

    :cond_0
    iput-object p1, p0, Lio/flutter/embedding/engine/h/a;->c:Landroid/view/Surface;

    iget-object v0, p0, Lio/flutter/embedding/engine/h/a;->a:Lio/flutter/embedding/engine/FlutterJNI;

    invoke-virtual {v0, p1}, Lio/flutter/embedding/engine/FlutterJNI;->onSurfaceCreated(Landroid/view/Surface;)V

    return-void
.end method

.method public a(Lio/flutter/embedding/engine/h/a$c;)V
    .locals 18

    move-object/from16 v0, p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Setting viewport metrics\nSize: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lio/flutter/embedding/engine/h/a$c;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " x "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lio/flutter/embedding/engine/h/a$c;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\nPadding - L: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lio/flutter/embedding/engine/h/a$c;->g:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", T: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lio/flutter/embedding/engine/h/a$c;->d:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", R: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Lio/flutter/embedding/engine/h/a$c;->e:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", B: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v0, Lio/flutter/embedding/engine/h/a$c;->f:I

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "\nInsets - L: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v0, Lio/flutter/embedding/engine/h/a$c;->k:I

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v0, Lio/flutter/embedding/engine/h/a$c;->h:I

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v0, Lio/flutter/embedding/engine/h/a$c;->i:I

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v0, Lio/flutter/embedding/engine/h/a$c;->j:I

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "\nSystem Gesture Insets - L: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v0, Lio/flutter/embedding/engine/h/a$c;->o:I

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lio/flutter/embedding/engine/h/a$c;->l:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lio/flutter/embedding/engine/h/a$c;->m:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lio/flutter/embedding/engine/h/a$c;->j:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FlutterRenderer"

    invoke-static {v2, v1}, Lc/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v1, p0

    iget-object v2, v1, Lio/flutter/embedding/engine/h/a;->a:Lio/flutter/embedding/engine/FlutterJNI;

    iget v3, v0, Lio/flutter/embedding/engine/h/a$c;->a:F

    iget v4, v0, Lio/flutter/embedding/engine/h/a$c;->b:I

    iget v5, v0, Lio/flutter/embedding/engine/h/a$c;->c:I

    iget v6, v0, Lio/flutter/embedding/engine/h/a$c;->d:I

    iget v7, v0, Lio/flutter/embedding/engine/h/a$c;->e:I

    iget v8, v0, Lio/flutter/embedding/engine/h/a$c;->f:I

    iget v9, v0, Lio/flutter/embedding/engine/h/a$c;->g:I

    iget v10, v0, Lio/flutter/embedding/engine/h/a$c;->h:I

    iget v11, v0, Lio/flutter/embedding/engine/h/a$c;->i:I

    iget v12, v0, Lio/flutter/embedding/engine/h/a$c;->j:I

    iget v13, v0, Lio/flutter/embedding/engine/h/a$c;->k:I

    iget v14, v0, Lio/flutter/embedding/engine/h/a$c;->l:I

    iget v15, v0, Lio/flutter/embedding/engine/h/a$c;->m:I

    iget v1, v0, Lio/flutter/embedding/engine/h/a$c;->n:I

    iget v0, v0, Lio/flutter/embedding/engine/h/a$c;->o:I

    move/from16 v16, v1

    move/from16 v17, v0

    invoke-virtual/range {v2 .. v17}, Lio/flutter/embedding/engine/FlutterJNI;->setViewportMetrics(FIIIIIIIIIIIIII)V

    return-void
.end method

.method public a(Lio/flutter/embedding/engine/h/b;)V
    .locals 1

    iget-object v0, p0, Lio/flutter/embedding/engine/h/a;->a:Lio/flutter/embedding/engine/FlutterJNI;

    invoke-virtual {v0, p1}, Lio/flutter/embedding/engine/FlutterJNI;->addIsDisplayingFlutterUiListener(Lio/flutter/embedding/engine/h/b;)V

    iget-boolean v0, p0, Lio/flutter/embedding/engine/h/a;->d:Z

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lio/flutter/embedding/engine/h/b;->a()V

    :cond_0
    return-void
.end method

.method public a(Ljava/nio/ByteBuffer;I)V
    .locals 1

    iget-object v0, p0, Lio/flutter/embedding/engine/h/a;->a:Lio/flutter/embedding/engine/FlutterJNI;

    invoke-virtual {v0, p1, p2}, Lio/flutter/embedding/engine/FlutterJNI;->dispatchPointerDataPacket(Ljava/nio/ByteBuffer;I)V

    return-void
.end method

.method public a(Z)V
    .locals 1

    iget-object v0, p0, Lio/flutter/embedding/engine/h/a;->a:Lio/flutter/embedding/engine/FlutterJNI;

    invoke-virtual {v0, p1}, Lio/flutter/embedding/engine/FlutterJNI;->setSemanticsEnabled(Z)V

    return-void
.end method

.method public b(Lio/flutter/embedding/engine/h/b;)V
    .locals 1

    iget-object v0, p0, Lio/flutter/embedding/engine/h/a;->a:Lio/flutter/embedding/engine/FlutterJNI;

    invoke-virtual {v0, p1}, Lio/flutter/embedding/engine/FlutterJNI;->removeIsDisplayingFlutterUiListener(Lio/flutter/embedding/engine/h/b;)V

    return-void
.end method

.method public b()Z
    .locals 1

    iget-boolean v0, p0, Lio/flutter/embedding/engine/h/a;->d:Z

    return v0
.end method

.method public c()Z
    .locals 1

    iget-object v0, p0, Lio/flutter/embedding/engine/h/a;->a:Lio/flutter/embedding/engine/FlutterJNI;

    invoke-virtual {v0}, Lio/flutter/embedding/engine/FlutterJNI;->nativeGetIsSoftwareRenderingEnabled()Z

    move-result v0

    return v0
.end method

.method public d()V
    .locals 1

    iget-object v0, p0, Lio/flutter/embedding/engine/h/a;->a:Lio/flutter/embedding/engine/FlutterJNI;

    invoke-virtual {v0}, Lio/flutter/embedding/engine/FlutterJNI;->onSurfaceDestroyed()V

    const/4 v0, 0x0

    iput-object v0, p0, Lio/flutter/embedding/engine/h/a;->c:Landroid/view/Surface;

    iget-boolean v0, p0, Lio/flutter/embedding/engine/h/a;->d:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/flutter/embedding/engine/h/a;->e:Lio/flutter/embedding/engine/h/b;

    invoke-interface {v0}, Lio/flutter/embedding/engine/h/b;->b()V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/flutter/embedding/engine/h/a;->d:Z

    return-void
.end method
