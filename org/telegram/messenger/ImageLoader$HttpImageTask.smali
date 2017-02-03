.class Lorg/telegram/messenger/ImageLoader$HttpImageTask;
.super Landroid/os/AsyncTask;
.source "ImageLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/ImageLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HttpImageTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

.field private canRetry:Z

.field private fileOutputStream:Ljava/io/RandomAccessFile;

.field private httpConnection:Ljava/net/URLConnection;

.field private imageSize:I

.field private lastProgressTime:J

.field final synthetic this$0:Lorg/telegram/messenger/ImageLoader;


# direct methods
.method public constructor <init>(Lorg/telegram/messenger/ImageLoader;Lorg/telegram/messenger/ImageLoader$CacheImage;I)V
    .locals 2

    const/4 v1, 0x0

    iput-object p1, p0, Lorg/telegram/messenger/ImageLoader$HttpImageTask;->this$0:Lorg/telegram/messenger/ImageLoader;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object v1, p0, Lorg/telegram/messenger/ImageLoader$HttpImageTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iput-object v1, p0, Lorg/telegram/messenger/ImageLoader$HttpImageTask;->fileOutputStream:Ljava/io/RandomAccessFile;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/messenger/ImageLoader$HttpImageTask;->canRetry:Z

    iput-object v1, p0, Lorg/telegram/messenger/ImageLoader$HttpImageTask;->httpConnection:Ljava/net/URLConnection;

    iput-object p2, p0, Lorg/telegram/messenger/ImageLoader$HttpImageTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iput p3, p0, Lorg/telegram/messenger/ImageLoader$HttpImageTask;->imageSize:I

    return-void
.end method

.method static synthetic access$300(Lorg/telegram/messenger/ImageLoader$HttpImageTask;)Lorg/telegram/messenger/ImageLoader$CacheImage;
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader$HttpImageTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    return-object v0
.end method

.method static synthetic access$3900(Lorg/telegram/messenger/ImageLoader$HttpImageTask;)I
    .locals 1

    iget v0, p0, Lorg/telegram/messenger/ImageLoader$HttpImageTask;->imageSize:I

    return v0
.end method

.method private reportProgress(F)V
    .locals 6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const/high16 v2, 0x3f80

    cmpl-float v2, p1, v2

    if-eqz v2, :cond_0

    iget-wide v2, p0, Lorg/telegram/messenger/ImageLoader$HttpImageTask;->lastProgressTime:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    iget-wide v2, p0, Lorg/telegram/messenger/ImageLoader$HttpImageTask;->lastProgressTime:J

    const-wide/16 v4, 0x1f4

    sub-long v4, v0, v4

    cmp-long v2, v2, v4

    if-gez v2, :cond_1

    :cond_0
    iput-wide v0, p0, Lorg/telegram/messenger/ImageLoader$HttpImageTask;->lastProgressTime:J

    sget-object v2, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v3, Lorg/telegram/messenger/ImageLoader$HttpImageTask$1;

    invoke-direct {v3, p0, p1}, Lorg/telegram/messenger/ImageLoader$HttpImageTask$1;-><init>(Lorg/telegram/messenger/ImageLoader$HttpImageTask;F)V

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 14

    const/4 v6, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0}, Lorg/telegram/messenger/ImageLoader$HttpImageTask;->isCancelled()Z

    move-result v11

    if-nez v11, :cond_1

    :try_start_0
    new-instance v3, Ljava/net/URL;

    iget-object v11, p0, Lorg/telegram/messenger/ImageLoader$HttpImageTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v11, v11, Lorg/telegram/messenger/ImageLoader$CacheImage;->httpUrl:Ljava/lang/String;

    invoke-direct {v3, v11}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v11

    iput-object v11, p0, Lorg/telegram/messenger/ImageLoader$HttpImageTask;->httpConnection:Ljava/net/URLConnection;

    iget-object v11, p0, Lorg/telegram/messenger/ImageLoader$HttpImageTask;->httpConnection:Ljava/net/URLConnection;

    const-string/jumbo v12, "User-Agent"

    const-string/jumbo v13, "Mozilla/5.0 (Linux; Android 4.4; Nexus 5 Build/_BuildID_) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/30.0.0.0 Mobile Safari/537.36"

    invoke-virtual {v11, v12, v13}, Ljava/net/URLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v11, p0, Lorg/telegram/messenger/ImageLoader$HttpImageTask;->httpConnection:Ljava/net/URLConnection;

    const-string/jumbo v12, "Referer"

    const-string/jumbo v13, "google.com"

    invoke-virtual {v11, v12, v13}, Ljava/net/URLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v11, p0, Lorg/telegram/messenger/ImageLoader$HttpImageTask;->httpConnection:Ljava/net/URLConnection;

    const/16 v12, 0x1388

    invoke-virtual {v11, v12}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    iget-object v11, p0, Lorg/telegram/messenger/ImageLoader$HttpImageTask;->httpConnection:Ljava/net/URLConnection;

    const/16 v12, 0x1388

    invoke-virtual {v11, v12}, Ljava/net/URLConnection;->setReadTimeout(I)V

    iget-object v11, p0, Lorg/telegram/messenger/ImageLoader$HttpImageTask;->httpConnection:Ljava/net/URLConnection;

    instance-of v11, v11, Ljava/net/HttpURLConnection;

    if-eqz v11, :cond_0

    iget-object v11, p0, Lorg/telegram/messenger/ImageLoader$HttpImageTask;->httpConnection:Ljava/net/URLConnection;

    check-cast v11, Ljava/net/HttpURLConnection;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    :cond_0
    invoke-virtual {p0}, Lorg/telegram/messenger/ImageLoader$HttpImageTask;->isCancelled()Z

    move-result v11

    if-nez v11, :cond_1

    iget-object v11, p0, Lorg/telegram/messenger/ImageLoader$HttpImageTask;->httpConnection:Ljava/net/URLConnection;

    invoke-virtual {v11}, Ljava/net/URLConnection;->connect()V

    iget-object v11, p0, Lorg/telegram/messenger/ImageLoader$HttpImageTask;->httpConnection:Ljava/net/URLConnection;

    invoke-virtual {v11}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    new-instance v11, Ljava/io/RandomAccessFile;

    iget-object v12, p0, Lorg/telegram/messenger/ImageLoader$HttpImageTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v12, v12, Lorg/telegram/messenger/ImageLoader$CacheImage;->tempFilePath:Ljava/io/File;

    const-string/jumbo v13, "rws"

    invoke-direct {v11, v12, v13}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v11, p0, Lorg/telegram/messenger/ImageLoader$HttpImageTask;->fileOutputStream:Ljava/io/RandomAccessFile;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lorg/telegram/messenger/ImageLoader$HttpImageTask;->isCancelled()Z

    move-result v11

    if-nez v11, :cond_5

    :try_start_1
    iget-object v11, p0, Lorg/telegram/messenger/ImageLoader$HttpImageTask;->httpConnection:Ljava/net/URLConnection;

    if-eqz v11, :cond_2

    iget-object v11, p0, Lorg/telegram/messenger/ImageLoader$HttpImageTask;->httpConnection:Ljava/net/URLConnection;

    instance-of v11, v11, Ljava/net/HttpURLConnection;

    if-eqz v11, :cond_2

    iget-object v11, p0, Lorg/telegram/messenger/ImageLoader$HttpImageTask;->httpConnection:Ljava/net/URLConnection;

    check-cast v11, Ljava/net/HttpURLConnection;

    invoke-virtual {v11}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    const/16 v11, 0xc8

    if-eq v0, v11, :cond_2

    const/16 v11, 0xca

    if-eq v0, v11, :cond_2

    const/16 v11, 0x130

    if-eq v0, v11, :cond_2

    const/4 v11, 0x0

    iput-boolean v11, p0, Lorg/telegram/messenger/ImageLoader$HttpImageTask;->canRetry:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_2
    :goto_1
    iget v11, p0, Lorg/telegram/messenger/ImageLoader$HttpImageTask;->imageSize:I

    if-nez v11, :cond_3

    iget-object v11, p0, Lorg/telegram/messenger/ImageLoader$HttpImageTask;->httpConnection:Ljava/net/URLConnection;

    if-eqz v11, :cond_3

    :try_start_2
    iget-object v11, p0, Lorg/telegram/messenger/ImageLoader$HttpImageTask;->httpConnection:Ljava/net/URLConnection;

    invoke-virtual {v11}, Ljava/net/URLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v5

    if-eqz v5, :cond_3

    const-string/jumbo v11, "content-Length"

    invoke-interface {v5, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    if-eqz v10, :cond_3

    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_3

    const/4 v11, 0x0

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    if-eqz v7, :cond_3

    invoke-static {v7}, Lorg/telegram/messenger/Utilities;->parseInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    iput v11, p0, Lorg/telegram/messenger/ImageLoader$HttpImageTask;->imageSize:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :cond_3
    :goto_2
    if-eqz v6, :cond_5

    const/16 v11, 0x2000

    :try_start_3
    new-array v1, v11, [B

    const/4 v9, 0x0

    :cond_4
    :goto_3
    invoke-virtual {p0}, Lorg/telegram/messenger/ImageLoader$HttpImageTask;->isCancelled()Z
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_4

    move-result v11

    if-eqz v11, :cond_d

    :cond_5
    :goto_4
    :try_start_4
    iget-object v11, p0, Lorg/telegram/messenger/ImageLoader$HttpImageTask;->fileOutputStream:Ljava/io/RandomAccessFile;

    if-eqz v11, :cond_6

    iget-object v11, p0, Lorg/telegram/messenger/ImageLoader$HttpImageTask;->fileOutputStream:Ljava/io/RandomAccessFile;

    invoke-virtual {v11}, Ljava/io/RandomAccessFile;->close()V

    const/4 v11, 0x0

    iput-object v11, p0, Lorg/telegram/messenger/ImageLoader$HttpImageTask;->fileOutputStream:Ljava/io/RandomAccessFile;
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_5

    :cond_6
    :goto_5
    if-eqz v6, :cond_7

    :try_start_5
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_6

    :cond_7
    :goto_6
    if-eqz v2, :cond_8

    iget-object v11, p0, Lorg/telegram/messenger/ImageLoader$HttpImageTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v11, v11, Lorg/telegram/messenger/ImageLoader$CacheImage;->tempFilePath:Ljava/io/File;

    if-eqz v11, :cond_8

    iget-object v11, p0, Lorg/telegram/messenger/ImageLoader$HttpImageTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v11, v11, Lorg/telegram/messenger/ImageLoader$CacheImage;->tempFilePath:Ljava/io/File;

    iget-object v12, p0, Lorg/telegram/messenger/ImageLoader$HttpImageTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v12, v12, Lorg/telegram/messenger/ImageLoader$CacheImage;->finalFilePath:Ljava/io/File;

    invoke-virtual {v11, v12}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v11

    if-nez v11, :cond_8

    iget-object v11, p0, Lorg/telegram/messenger/ImageLoader$HttpImageTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v12, p0, Lorg/telegram/messenger/ImageLoader$HttpImageTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v12, v12, Lorg/telegram/messenger/ImageLoader$CacheImage;->tempFilePath:Ljava/io/File;

    iput-object v12, v11, Lorg/telegram/messenger/ImageLoader$CacheImage;->finalFilePath:Ljava/io/File;

    :cond_8
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    return-object v11

    :catch_0
    move-exception v4

    instance-of v11, v4, Ljava/net/SocketTimeoutException;

    if-eqz v11, :cond_a

    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->isNetworkOnline()Z

    move-result v11

    if-eqz v11, :cond_9

    const/4 v11, 0x0

    iput-boolean v11, p0, Lorg/telegram/messenger/ImageLoader$HttpImageTask;->canRetry:Z

    :cond_9
    :goto_7
    const-string/jumbo v11, "tmessages"

    invoke-static {v11, v4}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    :cond_a
    instance-of v11, v4, Ljava/net/UnknownHostException;

    if-eqz v11, :cond_b

    const/4 v11, 0x0

    iput-boolean v11, p0, Lorg/telegram/messenger/ImageLoader$HttpImageTask;->canRetry:Z

    goto :goto_7

    :cond_b
    instance-of v11, v4, Ljava/net/SocketException;

    if-eqz v11, :cond_c

    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_9

    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v12, "ECONNRESET"

    invoke-virtual {v11, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_9

    const/4 v11, 0x0

    iput-boolean v11, p0, Lorg/telegram/messenger/ImageLoader$HttpImageTask;->canRetry:Z

    goto :goto_7

    :cond_c
    instance-of v11, v4, Ljava/io/FileNotFoundException;

    if-eqz v11, :cond_9

    const/4 v11, 0x0

    iput-boolean v11, p0, Lorg/telegram/messenger/ImageLoader$HttpImageTask;->canRetry:Z

    goto :goto_7

    :catch_1
    move-exception v4

    const-string/jumbo v11, "tmessages"

    invoke-static {v11, v4}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1

    :catch_2
    move-exception v4

    const-string/jumbo v11, "tmessages"

    invoke-static {v11, v4}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2

    :cond_d
    :try_start_6
    invoke-virtual {v6, v1}, Ljava/io/InputStream;->read([B)I

    move-result v8

    if-lez v8, :cond_e

    add-int/2addr v9, v8

    iget-object v11, p0, Lorg/telegram/messenger/ImageLoader$HttpImageTask;->fileOutputStream:Ljava/io/RandomAccessFile;

    const/4 v12, 0x0

    invoke-virtual {v11, v1, v12, v8}, Ljava/io/RandomAccessFile;->write([BII)V

    iget v11, p0, Lorg/telegram/messenger/ImageLoader$HttpImageTask;->imageSize:I

    if-eqz v11, :cond_4

    int-to-float v11, v9

    iget v12, p0, Lorg/telegram/messenger/ImageLoader$HttpImageTask;->imageSize:I

    int-to-float v12, v12

    div-float/2addr v11, v12

    invoke-direct {p0, v11}, Lorg/telegram/messenger/ImageLoader$HttpImageTask;->reportProgress(F)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_4

    goto/16 :goto_3

    :catch_3
    move-exception v4

    :try_start_7
    const-string/jumbo v11, "tmessages"

    invoke-static {v11, v4}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_4

    goto/16 :goto_4

    :catch_4
    move-exception v4

    const-string/jumbo v11, "tmessages"

    invoke-static {v11, v4}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_4

    :cond_e
    const/4 v11, -0x1

    if-ne v8, v11, :cond_5

    const/4 v2, 0x1

    :try_start_8
    iget v11, p0, Lorg/telegram/messenger/ImageLoader$HttpImageTask;->imageSize:I

    if-eqz v11, :cond_5

    const/high16 v11, 0x3f80

    invoke-direct {p0, v11}, Lorg/telegram/messenger/ImageLoader$HttpImageTask;->reportProgress(F)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_4

    goto/16 :goto_4

    :catch_5
    move-exception v4

    const-string/jumbo v11, "tmessages"

    invoke-static {v11, v4}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_5

    :catch_6
    move-exception v4

    const-string/jumbo v11, "tmessages"

    invoke-static {v11, v4}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_6
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lorg/telegram/messenger/ImageLoader$HttpImageTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onCancelled()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader$HttpImageTask;->this$0:Lorg/telegram/messenger/ImageLoader;

    #getter for: Lorg/telegram/messenger/ImageLoader;->imageLoadQueue:Lorg/telegram/messenger/DispatchQueue;
    invoke-static {v0}, Lorg/telegram/messenger/ImageLoader;->access$700(Lorg/telegram/messenger/ImageLoader;)Lorg/telegram/messenger/DispatchQueue;

    move-result-object v0

    new-instance v1, Lorg/telegram/messenger/ImageLoader$HttpImageTask$4;

    invoke-direct {v1, p0}, Lorg/telegram/messenger/ImageLoader$HttpImageTask$4;-><init>(Lorg/telegram/messenger/ImageLoader$HttpImageTask;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    sget-object v0, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/ImageLoader$HttpImageTask$5;

    invoke-direct {v1, p0}, Lorg/telegram/messenger/ImageLoader$HttpImageTask$5;-><init>(Lorg/telegram/messenger/ImageLoader$HttpImageTask;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 4

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/messenger/ImageLoader$HttpImageTask;->canRetry:Z

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader$HttpImageTask;->this$0:Lorg/telegram/messenger/ImageLoader;

    iget-object v1, p0, Lorg/telegram/messenger/ImageLoader$HttpImageTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v1, v1, Lorg/telegram/messenger/ImageLoader$CacheImage;->url:Ljava/lang/String;

    iget-object v2, p0, Lorg/telegram/messenger/ImageLoader$HttpImageTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v2, v2, Lorg/telegram/messenger/ImageLoader$CacheImage;->finalFilePath:Ljava/io/File;

    const/4 v3, 0x0

    #calls: Lorg/telegram/messenger/ImageLoader;->fileDidLoaded(Ljava/lang/String;Ljava/io/File;I)V
    invoke-static {v0, v1, v2, v3}, Lorg/telegram/messenger/ImageLoader;->access$400(Lorg/telegram/messenger/ImageLoader;Ljava/lang/String;Ljava/io/File;I)V

    :goto_0
    sget-object v0, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/ImageLoader$HttpImageTask$2;

    invoke-direct {v1, p0, p1}, Lorg/telegram/messenger/ImageLoader$HttpImageTask$2;-><init>(Lorg/telegram/messenger/ImageLoader$HttpImageTask;Ljava/lang/Boolean;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader$HttpImageTask;->this$0:Lorg/telegram/messenger/ImageLoader;

    #getter for: Lorg/telegram/messenger/ImageLoader;->imageLoadQueue:Lorg/telegram/messenger/DispatchQueue;
    invoke-static {v0}, Lorg/telegram/messenger/ImageLoader;->access$700(Lorg/telegram/messenger/ImageLoader;)Lorg/telegram/messenger/DispatchQueue;

    move-result-object v0

    new-instance v1, Lorg/telegram/messenger/ImageLoader$HttpImageTask$3;

    invoke-direct {v1, p0}, Lorg/telegram/messenger/ImageLoader$HttpImageTask$3;-><init>(Lorg/telegram/messenger/ImageLoader$HttpImageTask;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    return-void

    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader$HttpImageTask;->this$0:Lorg/telegram/messenger/ImageLoader;

    iget-object v1, p0, Lorg/telegram/messenger/ImageLoader$HttpImageTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v1, v1, Lorg/telegram/messenger/ImageLoader$CacheImage;->url:Ljava/lang/String;

    #calls: Lorg/telegram/messenger/ImageLoader;->httpFileLoadError(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lorg/telegram/messenger/ImageLoader;->access$500(Lorg/telegram/messenger/ImageLoader;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lorg/telegram/messenger/ImageLoader$HttpImageTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
