.class Lorg/telegram/messenger/MessagesController$58$1;
.super Ljava/lang/Object;
.source "MessagesController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/MessagesController$58;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/messenger/MessagesController$58;

.field final synthetic val$dialogsToUpdate:Ljava/util/HashMap;

.field final synthetic val$new_dialogMessage:Ljava/util/HashMap;

.field final synthetic val$new_dialogs_dict:Ljava/util/HashMap;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/MessagesController$58;Ljava/util/HashMap;Ljava/util/HashMap;Ljava/util/HashMap;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/messenger/MessagesController$58$1;->this$1:Lorg/telegram/messenger/MessagesController$58;

    iput-object p2, p0, Lorg/telegram/messenger/MessagesController$58$1;->val$new_dialogs_dict:Ljava/util/HashMap;

    iput-object p3, p0, Lorg/telegram/messenger/MessagesController$58$1;->val$new_dialogMessage:Ljava/util/HashMap;

    iput-object p4, p0, Lorg/telegram/messenger/MessagesController$58$1;->val$dialogsToUpdate:Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    const/4 v14, 0x0

    const/4 v9, 0x1

    const-wide/16 v12, 0x0

    iget-object v7, p0, Lorg/telegram/messenger/MessagesController$58$1;->this$1:Lorg/telegram/messenger/MessagesController$58;

    iget-object v7, v7, Lorg/telegram/messenger/MessagesController$58;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v8, p0, Lorg/telegram/messenger/MessagesController$58$1;->this$1:Lorg/telegram/messenger/MessagesController$58;

    iget-object v8, v8, Lorg/telegram/messenger/MessagesController$58;->val$dialogsRes:Lorg/telegram/tgnet/TLRPC$messages_Dialogs;

    iget-object v8, v8, Lorg/telegram/tgnet/TLRPC$messages_Dialogs;->users:Ljava/util/ArrayList;

    invoke-virtual {v7, v8, v9}, Lorg/telegram/messenger/MessagesController;->putUsers(Ljava/util/ArrayList;Z)V

    iget-object v7, p0, Lorg/telegram/messenger/MessagesController$58$1;->this$1:Lorg/telegram/messenger/MessagesController$58;

    iget-object v7, v7, Lorg/telegram/messenger/MessagesController$58;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v8, p0, Lorg/telegram/messenger/MessagesController$58$1;->this$1:Lorg/telegram/messenger/MessagesController$58;

    iget-object v8, v8, Lorg/telegram/messenger/MessagesController$58;->val$dialogsRes:Lorg/telegram/tgnet/TLRPC$messages_Dialogs;

    iget-object v8, v8, Lorg/telegram/tgnet/TLRPC$messages_Dialogs;->chats:Ljava/util/ArrayList;

    invoke-virtual {v7, v8, v9}, Lorg/telegram/messenger/MessagesController;->putChats(Ljava/util/ArrayList;Z)V

    iget-object v7, p0, Lorg/telegram/messenger/MessagesController$58$1;->val$new_dialogs_dict:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_a

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/tgnet/TLRPC$TL_dialog;

    iget-object v8, p0, Lorg/telegram/messenger/MessagesController$58$1;->this$1:Lorg/telegram/messenger/MessagesController$58;

    iget-object v8, v8, Lorg/telegram/messenger/MessagesController$58;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v8, v8, Lorg/telegram/messenger/MessagesController;->dialogs_dict:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v8, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_dialog;

    if-nez v0, :cond_1

    iget-object v8, p0, Lorg/telegram/messenger/MessagesController$58$1;->this$1:Lorg/telegram/messenger/MessagesController$58;

    iget-object v8, v8, Lorg/telegram/messenger/MessagesController$58;->this$0:Lorg/telegram/messenger/MessagesController;

    iget v9, v8, Lorg/telegram/messenger/MessagesController;->nextDialogsCacheOffset:I

    add-int/lit8 v9, v9, 0x1

    iput v9, v8, Lorg/telegram/messenger/MessagesController;->nextDialogsCacheOffset:I

    iget-object v8, p0, Lorg/telegram/messenger/MessagesController$58$1;->this$1:Lorg/telegram/messenger/MessagesController$58;

    iget-object v8, v8, Lorg/telegram/messenger/MessagesController$58;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v8, v8, Lorg/telegram/messenger/MessagesController;->dialogs_dict:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v8, v1, v6}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v8, p0, Lorg/telegram/messenger/MessagesController$58$1;->val$new_dialogMessage:Ljava/util/HashMap;

    iget-wide v10, v6, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/MessageObject;

    iget-object v8, p0, Lorg/telegram/messenger/MessagesController$58$1;->this$1:Lorg/telegram/messenger/MessagesController$58;

    iget-object v8, v8, Lorg/telegram/messenger/MessagesController$58;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v8, v8, Lorg/telegram/messenger/MessagesController;->dialogMessage:Ljava/util/HashMap;

    invoke-virtual {v8, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v2, :cond_0

    iget-object v8, v2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v8, v8, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v8, v8, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    if-nez v8, :cond_0

    iget-object v8, p0, Lorg/telegram/messenger/MessagesController$58$1;->this$1:Lorg/telegram/messenger/MessagesController$58;

    iget-object v8, v8, Lorg/telegram/messenger/MessagesController$58;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v8, v8, Lorg/telegram/messenger/MessagesController;->dialogMessagesByIds:Ljava/util/HashMap;

    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v8, v2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-wide v8, v8, Lorg/telegram/tgnet/TLRPC$Message;->random_id:J

    cmp-long v8, v8, v12

    if-eqz v8, :cond_0

    iget-object v8, p0, Lorg/telegram/messenger/MessagesController$58$1;->this$1:Lorg/telegram/messenger/MessagesController$58;

    iget-object v8, v8, Lorg/telegram/messenger/MessagesController$58;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v8, v8, Lorg/telegram/messenger/MessagesController;->dialogMessagesByRandomIds:Ljava/util/HashMap;

    iget-object v9, v2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-wide v10, v9, Lorg/telegram/tgnet/TLRPC$Message;->random_id:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v8, v9, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_1
    iget v8, v6, Lorg/telegram/tgnet/TLRPC$TL_dialog;->unread_count:I

    iput v8, v0, Lorg/telegram/tgnet/TLRPC$TL_dialog;->unread_count:I

    iget-object v8, p0, Lorg/telegram/messenger/MessagesController$58$1;->this$1:Lorg/telegram/messenger/MessagesController$58;

    iget-object v8, v8, Lorg/telegram/messenger/MessagesController$58;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v8, v8, Lorg/telegram/messenger/MessagesController;->dialogMessage:Ljava/util/HashMap;

    invoke-virtual {v8, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/messenger/MessageObject;

    if-eqz v4, :cond_2

    iget v8, v0, Lorg/telegram/tgnet/TLRPC$TL_dialog;->top_message:I

    if-lez v8, :cond_7

    :cond_2
    if-eqz v4, :cond_3

    iget-boolean v8, v4, Lorg/telegram/messenger/MessageObject;->deleted:Z

    if-nez v8, :cond_4

    :cond_3
    iget v8, v6, Lorg/telegram/tgnet/TLRPC$TL_dialog;->top_message:I

    iget v9, v0, Lorg/telegram/tgnet/TLRPC$TL_dialog;->top_message:I

    if-le v8, v9, :cond_0

    :cond_4
    iget-object v8, p0, Lorg/telegram/messenger/MessagesController$58$1;->this$1:Lorg/telegram/messenger/MessagesController$58;

    iget-object v8, v8, Lorg/telegram/messenger/MessagesController$58;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v8, v8, Lorg/telegram/messenger/MessagesController;->dialogs_dict:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v8, v1, v6}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v8, p0, Lorg/telegram/messenger/MessagesController$58$1;->val$new_dialogMessage:Ljava/util/HashMap;

    iget-wide v10, v6, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/MessageObject;

    iget-object v8, p0, Lorg/telegram/messenger/MessagesController$58$1;->this$1:Lorg/telegram/messenger/MessagesController$58;

    iget-object v8, v8, Lorg/telegram/messenger/MessagesController$58;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v8, v8, Lorg/telegram/messenger/MessagesController;->dialogMessage:Ljava/util/HashMap;

    invoke-virtual {v8, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v2, :cond_5

    iget-object v8, v2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v8, v8, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v8, v8, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    if-nez v8, :cond_5

    iget-object v8, p0, Lorg/telegram/messenger/MessagesController$58$1;->this$1:Lorg/telegram/messenger/MessagesController$58;

    iget-object v8, v8, Lorg/telegram/messenger/MessagesController$58;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v8, v8, Lorg/telegram/messenger/MessagesController;->dialogMessagesByIds:Ljava/util/HashMap;

    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v8, v2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-wide v8, v8, Lorg/telegram/tgnet/TLRPC$Message;->random_id:J

    cmp-long v8, v8, v12

    if-eqz v8, :cond_5

    iget-object v8, p0, Lorg/telegram/messenger/MessagesController$58$1;->this$1:Lorg/telegram/messenger/MessagesController$58;

    iget-object v8, v8, Lorg/telegram/messenger/MessagesController$58;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v8, v8, Lorg/telegram/messenger/MessagesController;->dialogMessagesByRandomIds:Ljava/util/HashMap;

    iget-object v9, v2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-wide v10, v9, Lorg/telegram/tgnet/TLRPC$Message;->random_id:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v8, v9, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    if-eqz v4, :cond_6

    iget-object v8, p0, Lorg/telegram/messenger/MessagesController$58$1;->this$1:Lorg/telegram/messenger/MessagesController$58;

    iget-object v8, v8, Lorg/telegram/messenger/MessagesController$58;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v8, v8, Lorg/telegram/messenger/MessagesController;->dialogMessagesByIds:Ljava/util/HashMap;

    invoke-virtual {v4}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v8, v4, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-wide v8, v8, Lorg/telegram/tgnet/TLRPC$Message;->random_id:J

    cmp-long v8, v8, v12

    if-eqz v8, :cond_6

    iget-object v8, p0, Lorg/telegram/messenger/MessagesController$58$1;->this$1:Lorg/telegram/messenger/MessagesController$58;

    iget-object v8, v8, Lorg/telegram/messenger/MessagesController$58;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v8, v8, Lorg/telegram/messenger/MessagesController;->dialogMessagesByRandomIds:Ljava/util/HashMap;

    iget-object v9, v4, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-wide v10, v9, Lorg/telegram/tgnet/TLRPC$Message;->random_id:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    if-nez v2, :cond_0

    iget-object v8, p0, Lorg/telegram/messenger/MessagesController$58$1;->this$1:Lorg/telegram/messenger/MessagesController$58;

    iget-object v8, v8, Lorg/telegram/messenger/MessagesController$58;->this$0:Lorg/telegram/messenger/MessagesController;

    invoke-virtual {v8, v6, v14, v12, v13}, Lorg/telegram/messenger/MessagesController;->checkLastDialogMessage(Lorg/telegram/tgnet/TLRPC$TL_dialog;Lorg/telegram/tgnet/TLRPC$InputPeer;J)V

    goto/16 :goto_0

    :cond_7
    iget-object v8, p0, Lorg/telegram/messenger/MessagesController$58$1;->val$new_dialogMessage:Ljava/util/HashMap;

    iget-wide v10, v6, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/MessageObject;

    iget-boolean v8, v4, Lorg/telegram/messenger/MessageObject;->deleted:Z

    if-nez v8, :cond_8

    if-eqz v3, :cond_8

    iget-object v8, v3, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v8, v8, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    iget-object v9, v4, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v9, v9, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    if-le v8, v9, :cond_0

    :cond_8
    iget-object v8, p0, Lorg/telegram/messenger/MessagesController$58$1;->this$1:Lorg/telegram/messenger/MessagesController$58;

    iget-object v8, v8, Lorg/telegram/messenger/MessagesController$58;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v8, v8, Lorg/telegram/messenger/MessagesController;->dialogs_dict:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v8, v1, v6}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v8, p0, Lorg/telegram/messenger/MessagesController$58$1;->this$1:Lorg/telegram/messenger/MessagesController$58;

    iget-object v8, v8, Lorg/telegram/messenger/MessagesController$58;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v8, v8, Lorg/telegram/messenger/MessagesController;->dialogMessage:Ljava/util/HashMap;

    invoke-virtual {v8, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v3, :cond_9

    iget-object v8, v3, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v8, v8, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v8, v8, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    if-nez v8, :cond_9

    iget-object v8, p0, Lorg/telegram/messenger/MessagesController$58$1;->this$1:Lorg/telegram/messenger/MessagesController$58;

    iget-object v8, v8, Lorg/telegram/messenger/MessagesController$58;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v8, v8, Lorg/telegram/messenger/MessagesController;->dialogMessagesByIds:Ljava/util/HashMap;

    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v8, v3, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-wide v8, v8, Lorg/telegram/tgnet/TLRPC$Message;->random_id:J

    cmp-long v8, v8, v12

    if-eqz v8, :cond_9

    iget-object v8, p0, Lorg/telegram/messenger/MessagesController$58$1;->this$1:Lorg/telegram/messenger/MessagesController$58;

    iget-object v8, v8, Lorg/telegram/messenger/MessagesController$58;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v8, v8, Lorg/telegram/messenger/MessagesController;->dialogMessagesByRandomIds:Ljava/util/HashMap;

    iget-object v9, v3, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-wide v10, v9, Lorg/telegram/tgnet/TLRPC$Message;->random_id:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v8, v9, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9
    iget-object v8, p0, Lorg/telegram/messenger/MessagesController$58$1;->this$1:Lorg/telegram/messenger/MessagesController$58;

    iget-object v8, v8, Lorg/telegram/messenger/MessagesController$58;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v8, v8, Lorg/telegram/messenger/MessagesController;->dialogMessagesByIds:Ljava/util/HashMap;

    invoke-virtual {v4}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v8, v4, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-wide v8, v8, Lorg/telegram/tgnet/TLRPC$Message;->random_id:J

    cmp-long v8, v8, v12

    if-eqz v8, :cond_0

    iget-object v8, p0, Lorg/telegram/messenger/MessagesController$58$1;->this$1:Lorg/telegram/messenger/MessagesController$58;

    iget-object v8, v8, Lorg/telegram/messenger/MessagesController$58;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v8, v8, Lorg/telegram/messenger/MessagesController;->dialogMessagesByRandomIds:Ljava/util/HashMap;

    iget-object v9, v4, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-wide v10, v9, Lorg/telegram/tgnet/TLRPC$Message;->random_id:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_a
    sget-object v7, Lorg/telegram/messenger/MessagesController;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    sget-object v7, Lorg/telegram/messenger/MessagesController;->dialogs:Ljava/util/ArrayList;

    iget-object v8, p0, Lorg/telegram/messenger/MessagesController$58$1;->this$1:Lorg/telegram/messenger/MessagesController$58;

    iget-object v8, v8, Lorg/telegram/messenger/MessagesController$58;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v8, v8, Lorg/telegram/messenger/MessagesController;->dialogs_dict:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v8}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v7, p0, Lorg/telegram/messenger/MessagesController$58$1;->this$1:Lorg/telegram/messenger/MessagesController$58;

    iget-object v7, v7, Lorg/telegram/messenger/MessagesController$58;->this$0:Lorg/telegram/messenger/MessagesController;

    invoke-virtual {v7, v14}, Lorg/telegram/messenger/MessagesController;->sortDialogs(Ljava/util/HashMap;)V

    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v7

    sget v8, Lorg/telegram/messenger/NotificationCenter;->dialogsNeedReload:I

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-virtual {v7, v8, v9}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    invoke-static {}, Lorg/telegram/messenger/NotificationsController;->getInstance()Lorg/telegram/messenger/NotificationsController;

    move-result-object v7

    iget-object v8, p0, Lorg/telegram/messenger/MessagesController$58$1;->val$dialogsToUpdate:Ljava/util/HashMap;

    invoke-virtual {v7, v8}, Lorg/telegram/messenger/NotificationsController;->processDialogsUpdateRead(Ljava/util/HashMap;)V

    return-void
.end method
