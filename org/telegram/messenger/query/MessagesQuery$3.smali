.class final Lorg/telegram/messenger/query/MessagesQuery$3;
.super Ljava/lang/Object;
.source "MessagesQuery.java"

# interfaces
.implements Lorg/telegram/tgnet/RequestDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/query/MessagesQuery;->loadPinnedMessageInternal(IIZ)Lorg/telegram/messenger/MessageObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$channelId:I


# direct methods
.method constructor <init>(I)V
    .locals 0

    iput p1, p0, Lorg/telegram/messenger/query/MessagesQuery$3;->val$channelId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v1, 0x0

    if-nez p2, :cond_0

    move-object v0, p1

    check-cast v0, Lorg/telegram/tgnet/TLRPC$messages_Messages;

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$messages_Messages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$messages_Messages;->messages:Ljava/util/ArrayList;

    invoke-static {v2}, Lorg/telegram/messenger/ImageLoader;->saveMessagesThumbs(Ljava/util/ArrayList;)V

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$messages_Messages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$messages_Messages;->users:Ljava/util/ArrayList;

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$messages_Messages;->chats:Ljava/util/ArrayList;

    #calls: Lorg/telegram/messenger/query/MessagesQuery;->broadcastPinnedMessage(Lorg/telegram/tgnet/TLRPC$Message;Ljava/util/ArrayList;Ljava/util/ArrayList;ZZ)Lorg/telegram/messenger/MessageObject;
    invoke-static {v2, v3, v4, v5, v5}, Lorg/telegram/messenger/query/MessagesQuery;->access$100(Lorg/telegram/tgnet/TLRPC$Message;Ljava/util/ArrayList;Ljava/util/ArrayList;ZZ)Lorg/telegram/messenger/MessageObject;

    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v2

    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$messages_Messages;->users:Ljava/util/ArrayList;

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$messages_Messages;->chats:Ljava/util/ArrayList;

    invoke-virtual {v2, v3, v4, v6, v6}, Lorg/telegram/messenger/MessagesStorage;->putUsersAndChats(Ljava/util/ArrayList;Ljava/util/ArrayList;ZZ)V

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$messages_Messages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$Message;

    #calls: Lorg/telegram/messenger/query/MessagesQuery;->savePinnedMessage(Lorg/telegram/tgnet/TLRPC$Message;)V
    invoke-static {v2}, Lorg/telegram/messenger/query/MessagesQuery;->access$200(Lorg/telegram/tgnet/TLRPC$Message;)V

    const/4 v1, 0x1

    :cond_0
    if-nez v1, :cond_1

    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v2

    iget v3, p0, Lorg/telegram/messenger/query/MessagesQuery$3;->val$channelId:I

    invoke-virtual {v2, v3, v5}, Lorg/telegram/messenger/MessagesStorage;->updateChannelPinnedMessage(II)V

    :cond_1
    return-void
.end method
