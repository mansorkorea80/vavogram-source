.class Lorg/telegram/messenger/MessagesStorage$35;
.super Ljava/lang/Object;
.source "MessagesStorage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/MessagesStorage;->loadChatInfo(ILjava/util/concurrent/Semaphore;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/MessagesStorage;

.field final synthetic val$byChannelUsers:Z

.field final synthetic val$chat_id:I

.field final synthetic val$force:Z

.field final synthetic val$semaphore:Ljava/util/concurrent/Semaphore;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/MessagesStorage;ILjava/util/concurrent/Semaphore;ZZ)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/messenger/MessagesStorage$35;->this$0:Lorg/telegram/messenger/MessagesStorage;

    iput p2, p0, Lorg/telegram/messenger/MessagesStorage$35;->val$chat_id:I

    iput-object p3, p0, Lorg/telegram/messenger/MessagesStorage$35;->val$semaphore:Ljava/util/concurrent/Semaphore;

    iput-boolean p4, p0, Lorg/telegram/messenger/MessagesStorage$35;->val$force:Z

    iput-boolean p5, p0, Lorg/telegram/messenger/MessagesStorage$35;->val$byChannelUsers:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 20

    const/4 v8, 0x0

    const/4 v3, 0x0

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/messenger/MessagesStorage$35;->this$0:Lorg/telegram/messenger/MessagesStorage;

    #getter for: Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;
    invoke-static {v1}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "SELECT info, pinned FROM chat_settings_v2 WHERE uid = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v5, v0, Lorg/telegram/messenger/MessagesStorage$35;->val$chat_id:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v5}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v13

    invoke-virtual {v13}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v13, v1}, Lorg/telegram/SQLite/SQLiteCursor;->byteBufferValue(I)Lorg/telegram/tgnet/NativeByteBuffer;

    move-result-object v14

    if-eqz v14, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v14, v1}, Lorg/telegram/tgnet/NativeByteBuffer;->readInt32(Z)I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v14, v1, v2}, Lorg/telegram/tgnet/TLRPC$ChatFull;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object v3

    invoke-virtual {v14}, Lorg/telegram/tgnet/NativeByteBuffer;->reuse()V

    const/4 v1, 0x1

    invoke-virtual {v13, v1}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v1

    iput v1, v3, Lorg/telegram/tgnet/TLRPC$ChatFull;->pinned_msg_id:I

    :cond_0
    invoke-virtual {v13}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    instance-of v1, v3, Lorg/telegram/tgnet/TLRPC$TL_chatFull;

    if-eqz v1, :cond_7

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v9, 0x0

    :goto_0
    iget-object v1, v3, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$ChatParticipants;->participants:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v9, v1, :cond_2

    iget-object v1, v3, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$ChatParticipants;->participants:Ljava/util/ArrayList;

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/telegram/tgnet/TLRPC$ChatParticipant;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, ","

    move-object/from16 v0, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    iget v1, v11, Lorg/telegram/tgnet/TLRPC$ChatParticipant;->user_id:I

    move-object/from16 v0, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-eqz v1, :cond_3

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/messenger/MessagesStorage$35;->this$0:Lorg/telegram/messenger/MessagesStorage;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v4}, Lorg/telegram/messenger/MessagesStorage;->getUsersInternal(Ljava/lang/String;Ljava/util/ArrayList;)V

    :cond_3
    :goto_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/messenger/MessagesStorage$35;->val$semaphore:Ljava/util/concurrent/Semaphore;

    if-eqz v1, :cond_4

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/messenger/MessagesStorage$35;->val$semaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->release()V

    :cond_4
    instance-of v1, v3, Lorg/telegram/tgnet/TLRPC$TL_channelFull;

    if-eqz v1, :cond_5

    iget v1, v3, Lorg/telegram/tgnet/TLRPC$ChatFull;->pinned_msg_id:I

    if-eqz v1, :cond_5

    move-object/from16 v0, p0

    iget v1, v0, Lorg/telegram/messenger/MessagesStorage$35;->val$chat_id:I

    iget v2, v3, Lorg/telegram/tgnet/TLRPC$ChatFull;->pinned_msg_id:I

    const/4 v5, 0x0

    invoke-static {v1, v2, v5}, Lorg/telegram/messenger/query/MessagesQuery;->loadPinnedMessage(IIZ)Lorg/telegram/messenger/MessageObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v8

    :cond_5
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/messenger/MessagesStorage$35;->val$chat_id:I

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lorg/telegram/messenger/MessagesStorage$35;->val$force:Z

    move-object/from16 v0, p0

    iget-boolean v7, v0, Lorg/telegram/messenger/MessagesStorage$35;->val$byChannelUsers:Z

    invoke-virtual/range {v1 .. v8}, Lorg/telegram/messenger/MessagesController;->processChatInfo(ILorg/telegram/tgnet/TLRPC$ChatFull;Ljava/util/ArrayList;ZZZLorg/telegram/messenger/MessageObject;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/messenger/MessagesStorage$35;->val$semaphore:Ljava/util/concurrent/Semaphore;

    if-eqz v1, :cond_6

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/messenger/MessagesStorage$35;->val$semaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->release()V

    :cond_6
    :goto_2
    return-void

    :cond_7
    :try_start_1
    instance-of v1, v3, Lorg/telegram/tgnet/TLRPC$TL_channelFull;

    if-eqz v1, :cond_3

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/messenger/MessagesStorage$35;->this$0:Lorg/telegram/messenger/MessagesStorage;

    #getter for: Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;
    invoke-static {v1}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "SELECT us.data, us.status, cu.data, cu.date FROM channel_users_v2 as cu LEFT JOIN users as us ON us.uid = cu.uid WHERE cu.did = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v5, v0, Lorg/telegram/messenger/MessagesStorage$35;->val$chat_id:I

    neg-int v5, v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v5, " ORDER BY cu.date DESC"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v5}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v13

    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_chatParticipants;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_chatParticipants;-><init>()V

    iput-object v1, v3, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    :cond_8
    :goto_3
    invoke-virtual {v13}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v1

    if-eqz v1, :cond_c

    const/16 v17, 0x0

    const/16 v16, 0x0

    const/4 v1, 0x0

    :try_start_2
    invoke-virtual {v13, v1}, Lorg/telegram/SQLite/SQLiteCursor;->byteBufferValue(I)Lorg/telegram/tgnet/NativeByteBuffer;

    move-result-object v14

    if-eqz v14, :cond_9

    const/4 v1, 0x0

    invoke-virtual {v14, v1}, Lorg/telegram/tgnet/NativeByteBuffer;->readInt32(Z)I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v14, v1, v2}, Lorg/telegram/tgnet/TLRPC$User;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v17

    invoke-virtual {v14}, Lorg/telegram/tgnet/NativeByteBuffer;->reuse()V

    :cond_9
    const/4 v1, 0x2

    invoke-virtual {v13, v1}, Lorg/telegram/SQLite/SQLiteCursor;->byteBufferValue(I)Lorg/telegram/tgnet/NativeByteBuffer;

    move-result-object v14

    if-eqz v14, :cond_a

    const/4 v1, 0x0

    invoke-virtual {v14, v1}, Lorg/telegram/tgnet/NativeByteBuffer;->readInt32(Z)I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v14, v1, v2}, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$ChannelParticipant;

    move-result-object v16

    invoke-virtual {v14}, Lorg/telegram/tgnet/NativeByteBuffer;->reuse()V

    :cond_a
    if-eqz v17, :cond_8

    if-eqz v16, :cond_8

    move-object/from16 v0, v17

    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$User;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    if-eqz v1, :cond_b

    move-object/from16 v0, v17

    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$User;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    const/4 v2, 0x1

    invoke-virtual {v13, v2}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v2

    iput v2, v1, Lorg/telegram/tgnet/TLRPC$UserStatus;->expires:I

    :cond_b
    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x3

    invoke-virtual {v13, v1}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v1

    move-object/from16 v0, v16

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->date:I

    new-instance v12, Lorg/telegram/tgnet/TLRPC$TL_chatChannelParticipant;

    invoke-direct {v12}, Lorg/telegram/tgnet/TLRPC$TL_chatChannelParticipant;-><init>()V

    move-object/from16 v0, v16

    iget v1, v0, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->user_id:I

    iput v1, v12, Lorg/telegram/tgnet/TLRPC$TL_chatChannelParticipant;->user_id:I

    move-object/from16 v0, v16

    iget v1, v0, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->date:I

    iput v1, v12, Lorg/telegram/tgnet/TLRPC$TL_chatChannelParticipant;->date:I

    move-object/from16 v0, v16

    iget v1, v0, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->inviter_id:I

    iput v1, v12, Lorg/telegram/tgnet/TLRPC$TL_chatChannelParticipant;->inviter_id:I

    move-object/from16 v0, v16

    iput-object v0, v12, Lorg/telegram/tgnet/TLRPC$TL_chatChannelParticipant;->channelParticipant:Lorg/telegram/tgnet/TLRPC$ChannelParticipant;

    iget-object v1, v3, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$ChatParticipants;->participants:Ljava/util/ArrayList;

    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    :catch_0
    move-exception v15

    :try_start_3
    const-string/jumbo v1, "tmessages"

    invoke-static {v1, v15}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_3

    :catch_1
    move-exception v15

    :try_start_4
    const-string/jumbo v1, "tmessages"

    invoke-static {v1, v15}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/messenger/MessagesStorage$35;->val$chat_id:I

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lorg/telegram/messenger/MessagesStorage$35;->val$force:Z

    move-object/from16 v0, p0

    iget-boolean v7, v0, Lorg/telegram/messenger/MessagesStorage$35;->val$byChannelUsers:Z

    invoke-virtual/range {v1 .. v8}, Lorg/telegram/messenger/MessagesController;->processChatInfo(ILorg/telegram/tgnet/TLRPC$ChatFull;Ljava/util/ArrayList;ZZZLorg/telegram/messenger/MessageObject;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/messenger/MessagesStorage$35;->val$semaphore:Ljava/util/concurrent/Semaphore;

    if-eqz v1, :cond_6

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/messenger/MessagesStorage$35;->val$semaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->release()V

    goto/16 :goto_2

    :cond_c
    :try_start_5
    invoke-virtual {v13}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v9, 0x0

    :goto_4
    iget-object v1, v3, Lorg/telegram/tgnet/TLRPC$ChatFull;->bot_info:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v9, v1, :cond_e

    iget-object v1, v3, Lorg/telegram/tgnet/TLRPC$ChatFull;->bot_info:Ljava/util/ArrayList;

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/telegram/tgnet/TLRPC$BotInfo;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-eqz v1, :cond_d

    const-string/jumbo v1, ","

    move-object/from16 v0, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_d
    iget v1, v10, Lorg/telegram/tgnet/TLRPC$BotInfo;->user_id:I

    move-object/from16 v0, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    :cond_e
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-eqz v1, :cond_3

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/messenger/MessagesStorage$35;->this$0:Lorg/telegram/messenger/MessagesStorage;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v4}, Lorg/telegram/messenger/MessagesStorage;->getUsersInternal(Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_1

    :catchall_0
    move-exception v1

    move-object/from16 v19, v1

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/messenger/MessagesStorage$35;->val$chat_id:I

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lorg/telegram/messenger/MessagesStorage$35;->val$force:Z

    move-object/from16 v0, p0

    iget-boolean v7, v0, Lorg/telegram/messenger/MessagesStorage$35;->val$byChannelUsers:Z

    invoke-virtual/range {v1 .. v8}, Lorg/telegram/messenger/MessagesController;->processChatInfo(ILorg/telegram/tgnet/TLRPC$ChatFull;Ljava/util/ArrayList;ZZZLorg/telegram/messenger/MessageObject;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/messenger/MessagesStorage$35;->val$semaphore:Ljava/util/concurrent/Semaphore;

    if-eqz v1, :cond_f

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/messenger/MessagesStorage$35;->val$semaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->release()V

    :cond_f
    throw v19
.end method
