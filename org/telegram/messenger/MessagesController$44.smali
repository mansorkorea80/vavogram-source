.class Lorg/telegram/messenger/MessagesController$44;
.super Ljava/lang/Object;
.source "MessagesController.java"

# interfaces
.implements Lorg/telegram/tgnet/RequestDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/MessagesController;->updateTimerProc()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/MessagesController;

.field final synthetic val$key:I

.field final synthetic val$req:Lorg/telegram/tgnet/TLRPC$TL_messages_getMessagesViews;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/MessagesController;ILorg/telegram/tgnet/TLRPC$TL_messages_getMessagesViews;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/messenger/MessagesController$44;->this$0:Lorg/telegram/messenger/MessagesController;

    iput p2, p0, Lorg/telegram/messenger/MessagesController$44;->val$key:I

    iput-object p3, p0, Lorg/telegram/messenger/MessagesController$44;->val$req:Lorg/telegram/tgnet/TLRPC$TL_messages_getMessagesViews;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 6

    if-nez p2, :cond_2

    move-object v3, p1

    check-cast v3, Lorg/telegram/tgnet/TLRPC$Vector;

    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iget v4, p0, Lorg/telegram/messenger/MessagesController$44;->val$key:I

    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseIntArray;

    if-nez v1, :cond_0

    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    iget v4, p0, Lorg/telegram/messenger/MessagesController$44;->val$key:I

    invoke-virtual {v2, v4, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v4, p0, Lorg/telegram/messenger/MessagesController$44;->val$req:Lorg/telegram/tgnet/TLRPC$TL_messages_getMessagesViews;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$TL_messages_getMessagesViews;->id:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_1

    iget-object v4, v3, Lorg/telegram/tgnet/TLRPC$Vector;->objects:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lt v0, v4, :cond_3

    :cond_1
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v4

    iget-object v5, p0, Lorg/telegram/messenger/MessagesController$44;->val$req:Lorg/telegram/tgnet/TLRPC$TL_messages_getMessagesViews;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$TL_messages_getMessagesViews;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    instance-of v5, v5, Lorg/telegram/tgnet/TLRPC$TL_inputPeerChannel;

    invoke-virtual {v4, v2, v5}, Lorg/telegram/messenger/MessagesStorage;->putChannelViews(Landroid/util/SparseArray;Z)V

    new-instance v4, Lorg/telegram/messenger/MessagesController$44$1;

    invoke-direct {v4, p0, v2}, Lorg/telegram/messenger/MessagesController$44$1;-><init>(Lorg/telegram/messenger/MessagesController$44;Landroid/util/SparseArray;)V

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    :cond_2
    return-void

    :cond_3
    iget-object v4, p0, Lorg/telegram/messenger/MessagesController$44;->val$req:Lorg/telegram/tgnet/TLRPC$TL_messages_getMessagesViews;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$TL_messages_getMessagesViews;->id:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget-object v4, v3, Lorg/telegram/tgnet/TLRPC$Vector;->objects:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v1, v5, v4}, Landroid/util/SparseIntArray;->put(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
