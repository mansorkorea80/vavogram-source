.class Lorg/telegram/messenger/MediaController$18$1;
.super Ljava/lang/Object;
.source "MediaController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/MediaController$18;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/messenger/MediaController$18;

.field final synthetic val$waveform:[B


# direct methods
.method constructor <init>(Lorg/telegram/messenger/MediaController$18;[B)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/messenger/MediaController$18$1;->this$1:Lorg/telegram/messenger/MediaController$18;

    iput-object p2, p0, Lorg/telegram/messenger/MediaController$18$1;->val$waveform:[B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    const/4 v5, 0x0

    iget-object v0, p0, Lorg/telegram/messenger/MediaController$18$1;->this$1:Lorg/telegram/messenger/MediaController$18;

    iget-object v0, v0, Lorg/telegram/messenger/MediaController$18;->this$0:Lorg/telegram/messenger/MediaController;

    #getter for: Lorg/telegram/messenger/MediaController;->generatingWaveform:Ljava/util/HashMap;
    invoke-static {v0}, Lorg/telegram/messenger/MediaController;->access$5700(Lorg/telegram/messenger/MediaController;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v2, p0, Lorg/telegram/messenger/MediaController$18$1;->this$1:Lorg/telegram/messenger/MediaController$18;

    iget-object v2, v2, Lorg/telegram/messenger/MediaController$18;->val$id:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/telegram/messenger/MessageObject;

    if-nez v10, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/MediaController$18$1;->val$waveform:[B

    if-eqz v0, :cond_0

    const/4 v7, 0x0

    :goto_1
    invoke-virtual {v10}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v7, v0, :cond_2

    invoke-virtual {v10}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;

    instance-of v0, v9, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/telegram/messenger/MediaController$18$1;->val$waveform:[B

    iput-object v0, v9, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->waveform:[B

    iget v0, v9, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->flags:I

    or-int/lit8 v0, v0, 0x4

    iput v0, v9, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->flags:I

    :cond_2
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_messages_messages;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_messages_messages;-><init>()V

    iget-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_messages;->messages:Ljava/util/ArrayList;

    iget-object v2, v10, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    invoke-virtual {v10}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v2

    const/4 v4, -0x1

    move v6, v5

    invoke-virtual/range {v0 .. v6}, Lorg/telegram/messenger/MessagesStorage;->putMessages(Lorg/telegram/tgnet/TLRPC$messages_Messages;JIIZ)V

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v2, Lorg/telegram/messenger/NotificationCenter;->replaceMessagesObjects:I

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v10}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v5

    const/4 v4, 0x1

    aput-object v8, v3, v4

    invoke-virtual {v0, v2, v3}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_1
.end method
