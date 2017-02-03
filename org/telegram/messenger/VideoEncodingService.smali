.class public Lorg/telegram/messenger/VideoEncodingService;
.super Landroid/app/Service;
.source "VideoEncodingService.java"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# instance fields
.field private builder:Landroid/support/v4/app/NotificationCompat$Builder;

.field private currentProgress:I

.field private path:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->FileUploadProgressChanged:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->stopEncodingService:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    return-void
.end method


# virtual methods
.method public varargs didReceivedNotification(I[Ljava/lang/Object;)V
    .locals 10

    const/4 v4, 0x1

    const/4 v5, 0x0

    sget v6, Lorg/telegram/messenger/NotificationCenter;->FileUploadProgressChanged:I

    if-ne p1, v6, :cond_2

    aget-object v1, p2, v5

    check-cast v1, Ljava/lang/String;

    iget-object v6, p0, Lorg/telegram/messenger/VideoEncodingService;->path:Ljava/lang/String;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lorg/telegram/messenger/VideoEncodingService;->path:Ljava/lang/String;

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    aget-object v3, p2, v4

    check-cast v3, Ljava/lang/Float;

    const/4 v6, 0x2

    aget-object v0, p2, v6

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v6

    const/high16 v7, 0x42c8

    mul-float/2addr v6, v7

    float-to-int v6, v6

    iput v6, p0, Lorg/telegram/messenger/VideoEncodingService;->currentProgress:I

    iget-object v6, p0, Lorg/telegram/messenger/VideoEncodingService;->builder:Landroid/support/v4/app/NotificationCompat$Builder;

    const/16 v7, 0x64

    iget v8, p0, Lorg/telegram/messenger/VideoEncodingService;->currentProgress:I

    iget v9, p0, Lorg/telegram/messenger/VideoEncodingService;->currentProgress:I

    if-nez v9, :cond_1

    :goto_0
    invoke-virtual {v6, v7, v8, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setProgress(IIZ)Landroid/support/v4/app/NotificationCompat$Builder;

    sget-object v4, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/support/v4/app/NotificationManagerCompat;->from(Landroid/content/Context;)Landroid/support/v4/app/NotificationManagerCompat;

    move-result-object v4

    const/4 v5, 0x4

    iget-object v6, p0, Lorg/telegram/messenger/VideoEncodingService;->builder:Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {v6}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/support/v4/app/NotificationManagerCompat;->notify(ILandroid/app/Notification;)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    move v4, v5

    goto :goto_0

    :cond_2
    sget v4, Lorg/telegram/messenger/NotificationCenter;->stopEncodingService:I

    if-ne p1, v4, :cond_0

    aget-object v2, p2, v5

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v4, p0, Lorg/telegram/messenger/VideoEncodingService;->path:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    :cond_3
    invoke-virtual {p0}, Lorg/telegram/messenger/VideoEncodingService;->stopSelf()V

    goto :goto_1
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/VideoEncodingService;->stopForeground(Z)V

    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->FileUploadProgressChanged:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->stopEncodingService:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    const-string/jumbo v0, "tmessages"

    const-string/jumbo v1, "destroy video service"

    invoke-static {v0, v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 10

    const v9, 0x7f0805b7

    const v8, 0x7f080415

    const/4 v7, 0x4

    const/4 v6, 0x2

    const/4 v1, 0x0

    const-string/jumbo v2, "path"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/telegram/messenger/VideoEncodingService;->path:Ljava/lang/String;

    const-string/jumbo v2, "gif"

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iget-object v2, p0, Lorg/telegram/messenger/VideoEncodingService;->path:Ljava/lang/String;

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lorg/telegram/messenger/VideoEncodingService;->stopSelf()V

    :goto_0
    return v6

    :cond_0
    const-string/jumbo v2, "tmessages"

    const-string/jumbo v3, "start video service"

    invoke-static {v2, v3}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lorg/telegram/messenger/VideoEncodingService;->builder:Landroid/support/v4/app/NotificationCompat$Builder;

    if-nez v2, :cond_1

    new-instance v2, Landroid/support/v4/app/NotificationCompat$Builder;

    sget-object v3, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lorg/telegram/messenger/VideoEncodingService;->builder:Landroid/support/v4/app/NotificationCompat$Builder;

    iget-object v2, p0, Lorg/telegram/messenger/VideoEncodingService;->builder:Landroid/support/v4/app/NotificationCompat$Builder;

    const v3, 0x1080088

    invoke-virtual {v2, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    iget-object v2, p0, Lorg/telegram/messenger/VideoEncodingService;->builder:Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Landroid/support/v4/app/NotificationCompat$Builder;->setWhen(J)Landroid/support/v4/app/NotificationCompat$Builder;

    iget-object v2, p0, Lorg/telegram/messenger/VideoEncodingService;->builder:Landroid/support/v4/app/NotificationCompat$Builder;

    const-string/jumbo v3, "AppName"

    const v4, 0x7f080081

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    if-eqz v0, :cond_3

    iget-object v2, p0, Lorg/telegram/messenger/VideoEncodingService;->builder:Landroid/support/v4/app/NotificationCompat$Builder;

    const-string/jumbo v3, "SendingGif"

    invoke-static {v3, v9}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    iget-object v2, p0, Lorg/telegram/messenger/VideoEncodingService;->builder:Landroid/support/v4/app/NotificationCompat$Builder;

    const-string/jumbo v3, "SendingGif"

    invoke-static {v3, v9}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    :cond_1
    :goto_1
    iput v1, p0, Lorg/telegram/messenger/VideoEncodingService;->currentProgress:I

    iget-object v2, p0, Lorg/telegram/messenger/VideoEncodingService;->builder:Landroid/support/v4/app/NotificationCompat$Builder;

    const/16 v3, 0x64

    iget v4, p0, Lorg/telegram/messenger/VideoEncodingService;->currentProgress:I

    iget v5, p0, Lorg/telegram/messenger/VideoEncodingService;->currentProgress:I

    if-nez v5, :cond_2

    const/4 v1, 0x1

    :cond_2
    invoke-virtual {v2, v3, v4, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setProgress(IIZ)Landroid/support/v4/app/NotificationCompat$Builder;

    iget-object v1, p0, Lorg/telegram/messenger/VideoEncodingService;->builder:Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {v1}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    invoke-virtual {p0, v7, v1}, Lorg/telegram/messenger/VideoEncodingService;->startForeground(ILandroid/app/Notification;)V

    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/support/v4/app/NotificationManagerCompat;->from(Landroid/content/Context;)Landroid/support/v4/app/NotificationManagerCompat;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/messenger/VideoEncodingService;->builder:Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {v2}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v2

    invoke-virtual {v1, v7, v2}, Landroid/support/v4/app/NotificationManagerCompat;->notify(ILandroid/app/Notification;)V

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lorg/telegram/messenger/VideoEncodingService;->builder:Landroid/support/v4/app/NotificationCompat$Builder;

    const-string/jumbo v3, "SendingVideo"

    invoke-static {v3, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    iget-object v2, p0, Lorg/telegram/messenger/VideoEncodingService;->builder:Landroid/support/v4/app/NotificationCompat$Builder;

    const-string/jumbo v3, "SendingVideo"

    invoke-static {v3, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    goto :goto_1
.end method
