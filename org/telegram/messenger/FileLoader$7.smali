.class Lorg/telegram/messenger/FileLoader$7;
.super Ljava/lang/Object;
.source "FileLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/FileLoader;->checkDownloadQueue(Lorg/telegram/tgnet/TLRPC$Document;Lorg/telegram/tgnet/TLRPC$FileLocation;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/FileLoader;

.field final synthetic val$arg1:Ljava/lang/String;

.field final synthetic val$document:Lorg/telegram/tgnet/TLRPC$Document;

.field final synthetic val$location:Lorg/telegram/tgnet/TLRPC$FileLocation;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/FileLoader;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$Document;Lorg/telegram/tgnet/TLRPC$FileLocation;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/messenger/FileLoader$7;->this$0:Lorg/telegram/messenger/FileLoader;

    iput-object p2, p0, Lorg/telegram/messenger/FileLoader$7;->val$arg1:Ljava/lang/String;

    iput-object p3, p0, Lorg/telegram/messenger/FileLoader$7;->val$document:Lorg/telegram/tgnet/TLRPC$Document;

    iput-object p4, p0, Lorg/telegram/messenger/FileLoader$7;->val$location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    const/4 v2, 0x3

    const/4 v3, 0x1

    const/4 v6, 0x0

    iget-object v4, p0, Lorg/telegram/messenger/FileLoader$7;->this$0:Lorg/telegram/messenger/FileLoader;

    #getter for: Lorg/telegram/messenger/FileLoader;->loadOperationPaths:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {v4}, Lorg/telegram/messenger/FileLoader;->access$900(Lorg/telegram/messenger/FileLoader;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v4

    iget-object v5, p0, Lorg/telegram/messenger/FileLoader$7;->val$arg1:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/FileLoadOperation;

    iget-object v4, p0, Lorg/telegram/messenger/FileLoader$7;->val$document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v4}, Lorg/telegram/messenger/MessageObject;->isVoiceDocument(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v4

    if-eqz v4, :cond_3

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lorg/telegram/messenger/FileLoadOperation;->wasStarted()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lorg/telegram/messenger/FileLoader$7;->this$0:Lorg/telegram/messenger/FileLoader;

    invoke-static {v4}, Lorg/telegram/messenger/FileLoader;->access$1110(Lorg/telegram/messenger/FileLoader;)I

    :cond_0
    :goto_0
    iget-object v4, p0, Lorg/telegram/messenger/FileLoader$7;->this$0:Lorg/telegram/messenger/FileLoader;

    #getter for: Lorg/telegram/messenger/FileLoader;->audioLoadOperationQueue:Ljava/util/LinkedList;
    invoke-static {v4}, Lorg/telegram/messenger/FileLoader;->access$1000(Lorg/telegram/messenger/FileLoader;)Ljava/util/LinkedList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_b

    iget-object v4, p0, Lorg/telegram/messenger/FileLoader$7;->this$0:Lorg/telegram/messenger/FileLoader;

    #getter for: Lorg/telegram/messenger/FileLoader;->audioLoadOperationQueue:Ljava/util/LinkedList;
    invoke-static {v4}, Lorg/telegram/messenger/FileLoader;->access$1000(Lorg/telegram/messenger/FileLoader;)Ljava/util/LinkedList;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/FileLoadOperation;

    invoke-virtual {v1}, Lorg/telegram/messenger/FileLoadOperation;->isForceRequest()Z

    move-result v4

    if-eqz v4, :cond_2

    move v0, v2

    :goto_1
    iget-object v4, p0, Lorg/telegram/messenger/FileLoader$7;->this$0:Lorg/telegram/messenger/FileLoader;

    #getter for: Lorg/telegram/messenger/FileLoader;->currentAudioLoadOperationsCount:I
    invoke-static {v4}, Lorg/telegram/messenger/FileLoader;->access$1100(Lorg/telegram/messenger/FileLoader;)I

    move-result v4

    if-ge v4, v0, :cond_b

    iget-object v4, p0, Lorg/telegram/messenger/FileLoader$7;->this$0:Lorg/telegram/messenger/FileLoader;

    #getter for: Lorg/telegram/messenger/FileLoader;->audioLoadOperationQueue:Ljava/util/LinkedList;
    invoke-static {v4}, Lorg/telegram/messenger/FileLoader;->access$1000(Lorg/telegram/messenger/FileLoader;)Ljava/util/LinkedList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/FileLoadOperation;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lorg/telegram/messenger/FileLoadOperation;->start()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lorg/telegram/messenger/FileLoader$7;->this$0:Lorg/telegram/messenger/FileLoader;

    invoke-static {v4}, Lorg/telegram/messenger/FileLoader;->access$1108(Lorg/telegram/messenger/FileLoader;)I

    goto :goto_0

    :cond_1
    iget-object v4, p0, Lorg/telegram/messenger/FileLoader$7;->this$0:Lorg/telegram/messenger/FileLoader;

    #getter for: Lorg/telegram/messenger/FileLoader;->audioLoadOperationQueue:Ljava/util/LinkedList;
    invoke-static {v4}, Lorg/telegram/messenger/FileLoader;->access$1000(Lorg/telegram/messenger/FileLoader;)Ljava/util/LinkedList;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    move v0, v3

    goto :goto_1

    :cond_3
    iget-object v4, p0, Lorg/telegram/messenger/FileLoader$7;->val$location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    if-eqz v4, :cond_7

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lorg/telegram/messenger/FileLoadOperation;->wasStarted()Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lorg/telegram/messenger/FileLoader$7;->this$0:Lorg/telegram/messenger/FileLoader;

    invoke-static {v4}, Lorg/telegram/messenger/FileLoader;->access$1310(Lorg/telegram/messenger/FileLoader;)I

    :cond_4
    :goto_2
    iget-object v4, p0, Lorg/telegram/messenger/FileLoader$7;->this$0:Lorg/telegram/messenger/FileLoader;

    #getter for: Lorg/telegram/messenger/FileLoader;->photoLoadOperationQueue:Ljava/util/LinkedList;
    invoke-static {v4}, Lorg/telegram/messenger/FileLoader;->access$1200(Lorg/telegram/messenger/FileLoader;)Ljava/util/LinkedList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_b

    iget-object v4, p0, Lorg/telegram/messenger/FileLoader$7;->this$0:Lorg/telegram/messenger/FileLoader;

    #getter for: Lorg/telegram/messenger/FileLoader;->photoLoadOperationQueue:Ljava/util/LinkedList;
    invoke-static {v4}, Lorg/telegram/messenger/FileLoader;->access$1200(Lorg/telegram/messenger/FileLoader;)Ljava/util/LinkedList;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/FileLoadOperation;

    invoke-virtual {v1}, Lorg/telegram/messenger/FileLoadOperation;->isForceRequest()Z

    move-result v4

    if-eqz v4, :cond_6

    move v0, v2

    :goto_3
    iget-object v4, p0, Lorg/telegram/messenger/FileLoader$7;->this$0:Lorg/telegram/messenger/FileLoader;

    #getter for: Lorg/telegram/messenger/FileLoader;->currentPhotoLoadOperationsCount:I
    invoke-static {v4}, Lorg/telegram/messenger/FileLoader;->access$1300(Lorg/telegram/messenger/FileLoader;)I

    move-result v4

    if-ge v4, v0, :cond_b

    iget-object v4, p0, Lorg/telegram/messenger/FileLoader$7;->this$0:Lorg/telegram/messenger/FileLoader;

    #getter for: Lorg/telegram/messenger/FileLoader;->photoLoadOperationQueue:Ljava/util/LinkedList;
    invoke-static {v4}, Lorg/telegram/messenger/FileLoader;->access$1200(Lorg/telegram/messenger/FileLoader;)Ljava/util/LinkedList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/FileLoadOperation;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lorg/telegram/messenger/FileLoadOperation;->start()Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lorg/telegram/messenger/FileLoader$7;->this$0:Lorg/telegram/messenger/FileLoader;

    invoke-static {v4}, Lorg/telegram/messenger/FileLoader;->access$1308(Lorg/telegram/messenger/FileLoader;)I

    goto :goto_2

    :cond_5
    iget-object v4, p0, Lorg/telegram/messenger/FileLoader$7;->this$0:Lorg/telegram/messenger/FileLoader;

    #getter for: Lorg/telegram/messenger/FileLoader;->photoLoadOperationQueue:Ljava/util/LinkedList;
    invoke-static {v4}, Lorg/telegram/messenger/FileLoader;->access$1200(Lorg/telegram/messenger/FileLoader;)Ljava/util/LinkedList;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_6
    move v0, v3

    goto :goto_3

    :cond_7
    if-eqz v1, :cond_8

    invoke-virtual {v1}, Lorg/telegram/messenger/FileLoadOperation;->wasStarted()Z

    move-result v4

    if-eqz v4, :cond_9

    iget-object v4, p0, Lorg/telegram/messenger/FileLoader$7;->this$0:Lorg/telegram/messenger/FileLoader;

    invoke-static {v4}, Lorg/telegram/messenger/FileLoader;->access$1510(Lorg/telegram/messenger/FileLoader;)I

    :cond_8
    :goto_4
    iget-object v4, p0, Lorg/telegram/messenger/FileLoader$7;->this$0:Lorg/telegram/messenger/FileLoader;

    #getter for: Lorg/telegram/messenger/FileLoader;->loadOperationQueue:Ljava/util/LinkedList;
    invoke-static {v4}, Lorg/telegram/messenger/FileLoader;->access$1400(Lorg/telegram/messenger/FileLoader;)Ljava/util/LinkedList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_b

    iget-object v4, p0, Lorg/telegram/messenger/FileLoader$7;->this$0:Lorg/telegram/messenger/FileLoader;

    #getter for: Lorg/telegram/messenger/FileLoader;->loadOperationQueue:Ljava/util/LinkedList;
    invoke-static {v4}, Lorg/telegram/messenger/FileLoader;->access$1400(Lorg/telegram/messenger/FileLoader;)Ljava/util/LinkedList;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/FileLoadOperation;

    invoke-virtual {v1}, Lorg/telegram/messenger/FileLoadOperation;->isForceRequest()Z

    move-result v4

    if-eqz v4, :cond_a

    move v0, v2

    :goto_5
    iget-object v4, p0, Lorg/telegram/messenger/FileLoader$7;->this$0:Lorg/telegram/messenger/FileLoader;

    #getter for: Lorg/telegram/messenger/FileLoader;->currentLoadOperationsCount:I
    invoke-static {v4}, Lorg/telegram/messenger/FileLoader;->access$1500(Lorg/telegram/messenger/FileLoader;)I

    move-result v4

    if-ge v4, v0, :cond_b

    iget-object v4, p0, Lorg/telegram/messenger/FileLoader$7;->this$0:Lorg/telegram/messenger/FileLoader;

    #getter for: Lorg/telegram/messenger/FileLoader;->loadOperationQueue:Ljava/util/LinkedList;
    invoke-static {v4}, Lorg/telegram/messenger/FileLoader;->access$1400(Lorg/telegram/messenger/FileLoader;)Ljava/util/LinkedList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/FileLoadOperation;

    if-eqz v1, :cond_8

    invoke-virtual {v1}, Lorg/telegram/messenger/FileLoadOperation;->start()Z

    move-result v4

    if-eqz v4, :cond_8

    iget-object v4, p0, Lorg/telegram/messenger/FileLoader$7;->this$0:Lorg/telegram/messenger/FileLoader;

    invoke-static {v4}, Lorg/telegram/messenger/FileLoader;->access$1508(Lorg/telegram/messenger/FileLoader;)I

    goto :goto_4

    :cond_9
    iget-object v4, p0, Lorg/telegram/messenger/FileLoader$7;->this$0:Lorg/telegram/messenger/FileLoader;

    #getter for: Lorg/telegram/messenger/FileLoader;->loadOperationQueue:Ljava/util/LinkedList;
    invoke-static {v4}, Lorg/telegram/messenger/FileLoader;->access$1400(Lorg/telegram/messenger/FileLoader;)Ljava/util/LinkedList;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_a
    move v0, v3

    goto :goto_5

    :cond_b
    return-void
.end method
