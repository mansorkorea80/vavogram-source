.class Lorg/telegram/messenger/camera/CameraController$6;
.super Ljava/lang/Object;
.source "CameraController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/camera/CameraController;->open(Lorg/telegram/messenger/camera/CameraSession;Landroid/graphics/SurfaceTexture;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/camera/CameraController;

.field final synthetic val$callback:Ljava/lang/Runnable;

.field final synthetic val$session:Lorg/telegram/messenger/camera/CameraSession;

.field final synthetic val$texture:Landroid/graphics/SurfaceTexture;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/camera/CameraController;Lorg/telegram/messenger/camera/CameraSession;Landroid/graphics/SurfaceTexture;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/messenger/camera/CameraController$6;->this$0:Lorg/telegram/messenger/camera/CameraController;

    iput-object p2, p0, Lorg/telegram/messenger/camera/CameraController$6;->val$session:Lorg/telegram/messenger/camera/CameraSession;

    iput-object p3, p0, Lorg/telegram/messenger/camera/CameraController$6;->val$texture:Landroid/graphics/SurfaceTexture;

    iput-object p4, p0, Lorg/telegram/messenger/camera/CameraController$6;->val$callback:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    iget-object v7, p0, Lorg/telegram/messenger/camera/CameraController$6;->val$session:Lorg/telegram/messenger/camera/CameraSession;

    iget-object v7, v7, Lorg/telegram/messenger/camera/CameraSession;->cameraInfo:Lorg/telegram/messenger/camera/CameraInfo;

    iget-object v1, v7, Lorg/telegram/messenger/camera/CameraInfo;->camera:Landroid/hardware/Camera;

    if-nez v1, :cond_0

    :try_start_0
    iget-object v7, p0, Lorg/telegram/messenger/camera/CameraController$6;->val$session:Lorg/telegram/messenger/camera/CameraSession;

    iget-object v7, v7, Lorg/telegram/messenger/camera/CameraSession;->cameraInfo:Lorg/telegram/messenger/camera/CameraInfo;

    iget-object v8, p0, Lorg/telegram/messenger/camera/CameraController$6;->val$session:Lorg/telegram/messenger/camera/CameraSession;

    iget-object v8, v8, Lorg/telegram/messenger/camera/CameraSession;->cameraInfo:Lorg/telegram/messenger/camera/CameraInfo;

    iget v8, v8, Lorg/telegram/messenger/camera/CameraInfo;->cameraId:I

    invoke-static {v8}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object v2

    iput-object v2, v7, Lorg/telegram/messenger/camera/CameraInfo;->camera:Landroid/hardware/Camera;

    move-object v1, v2

    :cond_0
    invoke-virtual {v1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v4

    invoke-virtual {v4}, Landroid/hardware/Camera$Parameters;->getSupportedFlashModes()Ljava/util/List;

    move-result-object v6

    iget-object v7, p0, Lorg/telegram/messenger/camera/CameraController$6;->this$0:Lorg/telegram/messenger/camera/CameraController;

    iget-object v7, v7, Lorg/telegram/messenger/camera/CameraController;->availableFlashModes:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    if-eqz v6, :cond_4

    const/4 v0, 0x0

    :goto_0
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    if-ge v0, v7, :cond_3

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string/jumbo v7, "off"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    const-string/jumbo v7, "on"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    const-string/jumbo v7, "auto"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    :cond_1
    iget-object v7, p0, Lorg/telegram/messenger/camera/CameraController$6;->this$0:Lorg/telegram/messenger/camera/CameraController;

    iget-object v7, v7, Lorg/telegram/messenger/camera/CameraController;->availableFlashModes:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    iget-object v8, p0, Lorg/telegram/messenger/camera/CameraController$6;->val$session:Lorg/telegram/messenger/camera/CameraSession;

    iget-object v7, p0, Lorg/telegram/messenger/camera/CameraController$6;->this$0:Lorg/telegram/messenger/camera/CameraController;

    iget-object v7, v7, Lorg/telegram/messenger/camera/CameraController;->availableFlashModes:Ljava/util/ArrayList;

    const/4 v9, 0x0

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v8, v7}, Lorg/telegram/messenger/camera/CameraSession;->checkFlashMode(Ljava/lang/String;)V

    :cond_4
    iget-object v7, p0, Lorg/telegram/messenger/camera/CameraController$6;->val$session:Lorg/telegram/messenger/camera/CameraSession;

    invoke-virtual {v7}, Lorg/telegram/messenger/camera/CameraSession;->configurePhotoCamera()V

    iget-object v7, p0, Lorg/telegram/messenger/camera/CameraController$6;->val$texture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v1, v7}, Landroid/hardware/Camera;->setPreviewTexture(Landroid/graphics/SurfaceTexture;)V

    invoke-virtual {v1}, Landroid/hardware/Camera;->startPreview()V

    iget-object v7, p0, Lorg/telegram/messenger/camera/CameraController$6;->val$callback:Ljava/lang/Runnable;

    if-eqz v7, :cond_5

    iget-object v7, p0, Lorg/telegram/messenger/camera/CameraController$6;->val$callback:Ljava/lang/Runnable;

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_5
    :goto_1
    return-void

    :catch_0
    move-exception v3

    iget-object v7, p0, Lorg/telegram/messenger/camera/CameraController$6;->val$session:Lorg/telegram/messenger/camera/CameraSession;

    iget-object v7, v7, Lorg/telegram/messenger/camera/CameraSession;->cameraInfo:Lorg/telegram/messenger/camera/CameraInfo;

    const/4 v8, 0x0

    iput-object v8, v7, Lorg/telegram/messenger/camera/CameraInfo;->camera:Landroid/hardware/Camera;

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Landroid/hardware/Camera;->release()V

    :cond_6
    const-string/jumbo v7, "tmessages"

    invoke-static {v7, v3}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method
