.class Lorg/telegram/messenger/camera/CameraController$5;
.super Ljava/lang/Object;
.source "CameraController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/camera/CameraController;->startPreview(Lorg/telegram/messenger/camera/CameraSession;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/camera/CameraController;

.field final synthetic val$session:Lorg/telegram/messenger/camera/CameraSession;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/camera/CameraController;Lorg/telegram/messenger/camera/CameraSession;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/messenger/camera/CameraController$5;->this$0:Lorg/telegram/messenger/camera/CameraController;

    iput-object p2, p0, Lorg/telegram/messenger/camera/CameraController$5;->val$session:Lorg/telegram/messenger/camera/CameraSession;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    iget-object v3, p0, Lorg/telegram/messenger/camera/CameraController$5;->val$session:Lorg/telegram/messenger/camera/CameraSession;

    iget-object v3, v3, Lorg/telegram/messenger/camera/CameraSession;->cameraInfo:Lorg/telegram/messenger/camera/CameraInfo;

    iget-object v0, v3, Lorg/telegram/messenger/camera/CameraInfo;->camera:Landroid/hardware/Camera;

    if-nez v0, :cond_0

    :try_start_0
    iget-object v3, p0, Lorg/telegram/messenger/camera/CameraController$5;->val$session:Lorg/telegram/messenger/camera/CameraSession;

    iget-object v3, v3, Lorg/telegram/messenger/camera/CameraSession;->cameraInfo:Lorg/telegram/messenger/camera/CameraInfo;

    iget-object v4, p0, Lorg/telegram/messenger/camera/CameraController$5;->val$session:Lorg/telegram/messenger/camera/CameraSession;

    iget-object v4, v4, Lorg/telegram/messenger/camera/CameraSession;->cameraInfo:Lorg/telegram/messenger/camera/CameraInfo;

    iget v4, v4, Lorg/telegram/messenger/camera/CameraInfo;->cameraId:I

    invoke-static {v4}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object v1

    iput-object v1, v3, Lorg/telegram/messenger/camera/CameraInfo;->camera:Landroid/hardware/Camera;

    move-object v0, v1

    :cond_0
    invoke-virtual {v0}, Landroid/hardware/Camera;->startPreview()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v2

    iget-object v3, p0, Lorg/telegram/messenger/camera/CameraController$5;->val$session:Lorg/telegram/messenger/camera/CameraSession;

    iget-object v3, v3, Lorg/telegram/messenger/camera/CameraSession;->cameraInfo:Lorg/telegram/messenger/camera/CameraInfo;

    const/4 v4, 0x0

    iput-object v4, v3, Lorg/telegram/messenger/camera/CameraInfo;->camera:Landroid/hardware/Camera;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    :cond_1
    const-string/jumbo v3, "tmessages"

    invoke-static {v3, v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
