.class Lorg/telegram/messenger/FileLoadOperation$1;
.super Ljava/lang/Object;
.source "FileLoadOperation.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/FileLoadOperation;->start()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/FileLoadOperation;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/FileLoadOperation;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/messenger/FileLoadOperation$1;->this$0:Lorg/telegram/messenger/FileLoadOperation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v1, p0, Lorg/telegram/messenger/FileLoadOperation$1;->this$0:Lorg/telegram/messenger/FileLoadOperation;

    #getter for: Lorg/telegram/messenger/FileLoadOperation;->totalBytesCount:I
    invoke-static {v1}, Lorg/telegram/messenger/FileLoadOperation;->access$000(Lorg/telegram/messenger/FileLoadOperation;)I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/telegram/messenger/FileLoadOperation$1;->this$0:Lorg/telegram/messenger/FileLoadOperation;

    #getter for: Lorg/telegram/messenger/FileLoadOperation;->downloadedBytes:I
    invoke-static {v1}, Lorg/telegram/messenger/FileLoadOperation;->access$100(Lorg/telegram/messenger/FileLoadOperation;)I

    move-result v1

    iget-object v2, p0, Lorg/telegram/messenger/FileLoadOperation$1;->this$0:Lorg/telegram/messenger/FileLoadOperation;

    #getter for: Lorg/telegram/messenger/FileLoadOperation;->totalBytesCount:I
    invoke-static {v2}, Lorg/telegram/messenger/FileLoadOperation;->access$000(Lorg/telegram/messenger/FileLoadOperation;)I

    move-result v2

    if-ne v1, v2, :cond_0

    :try_start_0
    iget-object v1, p0, Lorg/telegram/messenger/FileLoadOperation$1;->this$0:Lorg/telegram/messenger/FileLoadOperation;

    #calls: Lorg/telegram/messenger/FileLoadOperation;->onFinishLoadingFile()V
    invoke-static {v1}, Lorg/telegram/messenger/FileLoadOperation;->access$200(Lorg/telegram/messenger/FileLoadOperation;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lorg/telegram/messenger/FileLoadOperation$1;->this$0:Lorg/telegram/messenger/FileLoadOperation;

    const/4 v2, 0x1

    const/4 v3, 0x0

    #calls: Lorg/telegram/messenger/FileLoadOperation;->onFail(ZI)V
    invoke-static {v1, v2, v3}, Lorg/telegram/messenger/FileLoadOperation;->access$300(Lorg/telegram/messenger/FileLoadOperation;ZI)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lorg/telegram/messenger/FileLoadOperation$1;->this$0:Lorg/telegram/messenger/FileLoadOperation;

    #calls: Lorg/telegram/messenger/FileLoadOperation;->startDownloadRequest()V
    invoke-static {v1}, Lorg/telegram/messenger/FileLoadOperation;->access$400(Lorg/telegram/messenger/FileLoadOperation;)V

    goto :goto_0
.end method
