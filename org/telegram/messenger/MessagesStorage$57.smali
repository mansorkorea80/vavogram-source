.class Lorg/telegram/messenger/MessagesStorage$57;
.super Ljava/lang/Object;
.source "MessagesStorage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/MessagesStorage;->putEncryptedChat(Lorg/telegram/tgnet/TLRPC$EncryptedChat;Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$TL_dialog;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/MessagesStorage;

.field final synthetic val$chat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

.field final synthetic val$dialog:Lorg/telegram/tgnet/TLRPC$TL_dialog;

.field final synthetic val$user:Lorg/telegram/tgnet/TLRPC$User;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/MessagesStorage;Lorg/telegram/tgnet/TLRPC$EncryptedChat;Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$TL_dialog;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/messenger/MessagesStorage$57;->this$0:Lorg/telegram/messenger/MessagesStorage;

    iput-object p2, p0, Lorg/telegram/messenger/MessagesStorage$57;->val$chat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    iput-object p3, p0, Lorg/telegram/messenger/MessagesStorage$57;->val$user:Lorg/telegram/tgnet/TLRPC$User;

    iput-object p4, p0, Lorg/telegram/messenger/MessagesStorage$57;->val$dialog:Lorg/telegram/tgnet/TLRPC$TL_dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    const/4 v7, 0x1

    :try_start_0
    iget-object v8, p0, Lorg/telegram/messenger/MessagesStorage$57;->val$chat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    iget-object v8, v8, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->key_hash:[B

    if-eqz v8, :cond_0

    iget-object v8, p0, Lorg/telegram/messenger/MessagesStorage$57;->val$chat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    iget-object v8, v8, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->key_hash:[B

    array-length v8, v8

    const/16 v9, 0x10

    if-ge v8, v9, :cond_1

    :cond_0
    iget-object v8, p0, Lorg/telegram/messenger/MessagesStorage$57;->val$chat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    iget-object v8, v8, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->auth_key:[B

    if-eqz v8, :cond_1

    iget-object v8, p0, Lorg/telegram/messenger/MessagesStorage$57;->val$chat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    iget-object v9, p0, Lorg/telegram/messenger/MessagesStorage$57;->val$chat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    iget-object v9, v9, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->auth_key:[B

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->calcAuthKeyHash([B)[B

    move-result-object v9

    iput-object v9, v8, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->key_hash:[B

    :cond_1
    iget-object v8, p0, Lorg/telegram/messenger/MessagesStorage$57;->this$0:Lorg/telegram/messenger/MessagesStorage;

    #getter for: Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;
    invoke-static {v8}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v8

    const-string/jumbo v9, "REPLACE INTO enc_chats VALUES(?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)"

    invoke-virtual {v8, v9}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v6

    new-instance v0, Lorg/telegram/tgnet/NativeByteBuffer;

    iget-object v8, p0, Lorg/telegram/messenger/MessagesStorage$57;->val$chat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    invoke-virtual {v8}, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->getObjectSize()I

    move-result v8

    invoke-direct {v0, v8}, Lorg/telegram/tgnet/NativeByteBuffer;-><init>(I)V

    new-instance v1, Lorg/telegram/tgnet/NativeByteBuffer;

    iget-object v8, p0, Lorg/telegram/messenger/MessagesStorage$57;->val$chat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    iget-object v8, v8, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->a_or_b:[B

    if-eqz v8, :cond_8

    iget-object v8, p0, Lorg/telegram/messenger/MessagesStorage$57;->val$chat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    iget-object v8, v8, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->a_or_b:[B

    array-length v8, v8

    :goto_0
    invoke-direct {v1, v8}, Lorg/telegram/tgnet/NativeByteBuffer;-><init>(I)V

    new-instance v2, Lorg/telegram/tgnet/NativeByteBuffer;

    iget-object v8, p0, Lorg/telegram/messenger/MessagesStorage$57;->val$chat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    iget-object v8, v8, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->auth_key:[B

    if-eqz v8, :cond_9

    iget-object v8, p0, Lorg/telegram/messenger/MessagesStorage$57;->val$chat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    iget-object v8, v8, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->auth_key:[B

    array-length v8, v8

    :goto_1
    invoke-direct {v2, v8}, Lorg/telegram/tgnet/NativeByteBuffer;-><init>(I)V

    new-instance v3, Lorg/telegram/tgnet/NativeByteBuffer;

    iget-object v8, p0, Lorg/telegram/messenger/MessagesStorage$57;->val$chat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    iget-object v8, v8, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->future_auth_key:[B

    if-eqz v8, :cond_a

    iget-object v8, p0, Lorg/telegram/messenger/MessagesStorage$57;->val$chat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    iget-object v8, v8, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->future_auth_key:[B

    array-length v8, v8

    :goto_2
    invoke-direct {v3, v8}, Lorg/telegram/tgnet/NativeByteBuffer;-><init>(I)V

    new-instance v4, Lorg/telegram/tgnet/NativeByteBuffer;

    iget-object v8, p0, Lorg/telegram/messenger/MessagesStorage$57;->val$chat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    iget-object v8, v8, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->key_hash:[B

    if-eqz v8, :cond_2

    iget-object v7, p0, Lorg/telegram/messenger/MessagesStorage$57;->val$chat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->key_hash:[B

    array-length v7, v7

    :cond_2
    invoke-direct {v4, v7}, Lorg/telegram/tgnet/NativeByteBuffer;-><init>(I)V

    iget-object v7, p0, Lorg/telegram/messenger/MessagesStorage$57;->val$chat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    invoke-virtual {v7, v0}, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    const/4 v7, 0x1

    iget-object v8, p0, Lorg/telegram/messenger/MessagesStorage$57;->val$chat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    iget v8, v8, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->id:I

    invoke-virtual {v6, v7, v8}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    const/4 v7, 0x2

    iget-object v8, p0, Lorg/telegram/messenger/MessagesStorage$57;->val$user:Lorg/telegram/tgnet/TLRPC$User;

    iget v8, v8, Lorg/telegram/tgnet/TLRPC$User;->id:I

    invoke-virtual {v6, v7, v8}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    const/4 v7, 0x3

    iget-object v8, p0, Lorg/telegram/messenger/MessagesStorage$57;->this$0:Lorg/telegram/messenger/MessagesStorage;

    iget-object v9, p0, Lorg/telegram/messenger/MessagesStorage$57;->val$user:Lorg/telegram/tgnet/TLRPC$User;

    #calls: Lorg/telegram/messenger/MessagesStorage;->formatUserSearchName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;
    invoke-static {v8, v9}, Lorg/telegram/messenger/MessagesStorage;->access$1000(Lorg/telegram/messenger/MessagesStorage;Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindString(ILjava/lang/String;)V

    const/4 v7, 0x4

    invoke-virtual {v6, v7, v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindByteBuffer(ILorg/telegram/tgnet/NativeByteBuffer;)V

    iget-object v7, p0, Lorg/telegram/messenger/MessagesStorage$57;->val$chat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->a_or_b:[B

    if-eqz v7, :cond_3

    iget-object v7, p0, Lorg/telegram/messenger/MessagesStorage$57;->val$chat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->a_or_b:[B

    invoke-virtual {v1, v7}, Lorg/telegram/tgnet/NativeByteBuffer;->writeBytes([B)V

    :cond_3
    iget-object v7, p0, Lorg/telegram/messenger/MessagesStorage$57;->val$chat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->auth_key:[B

    if-eqz v7, :cond_4

    iget-object v7, p0, Lorg/telegram/messenger/MessagesStorage$57;->val$chat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->auth_key:[B

    invoke-virtual {v2, v7}, Lorg/telegram/tgnet/NativeByteBuffer;->writeBytes([B)V

    :cond_4
    iget-object v7, p0, Lorg/telegram/messenger/MessagesStorage$57;->val$chat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->future_auth_key:[B

    if-eqz v7, :cond_5

    iget-object v7, p0, Lorg/telegram/messenger/MessagesStorage$57;->val$chat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->future_auth_key:[B

    invoke-virtual {v3, v7}, Lorg/telegram/tgnet/NativeByteBuffer;->writeBytes([B)V

    :cond_5
    iget-object v7, p0, Lorg/telegram/messenger/MessagesStorage$57;->val$chat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->key_hash:[B

    if-eqz v7, :cond_6

    iget-object v7, p0, Lorg/telegram/messenger/MessagesStorage$57;->val$chat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->key_hash:[B

    invoke-virtual {v4, v7}, Lorg/telegram/tgnet/NativeByteBuffer;->writeBytes([B)V

    :cond_6
    const/4 v7, 0x5

    invoke-virtual {v6, v7, v1}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindByteBuffer(ILorg/telegram/tgnet/NativeByteBuffer;)V

    const/4 v7, 0x6

    invoke-virtual {v6, v7, v2}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindByteBuffer(ILorg/telegram/tgnet/NativeByteBuffer;)V

    const/4 v7, 0x7

    iget-object v8, p0, Lorg/telegram/messenger/MessagesStorage$57;->val$chat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    iget v8, v8, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->ttl:I

    invoke-virtual {v6, v7, v8}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    const/16 v7, 0x8

    iget-object v8, p0, Lorg/telegram/messenger/MessagesStorage$57;->val$chat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    iget v8, v8, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->layer:I

    invoke-virtual {v6, v7, v8}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    const/16 v7, 0x9

    iget-object v8, p0, Lorg/telegram/messenger/MessagesStorage$57;->val$chat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    iget v8, v8, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->seq_in:I

    invoke-virtual {v6, v7, v8}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    const/16 v7, 0xa

    iget-object v8, p0, Lorg/telegram/messenger/MessagesStorage$57;->val$chat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    iget v8, v8, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->seq_out:I

    invoke-virtual {v6, v7, v8}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    const/16 v7, 0xb

    iget-object v8, p0, Lorg/telegram/messenger/MessagesStorage$57;->val$chat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    iget-short v8, v8, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->key_use_count_in:S

    shl-int/lit8 v8, v8, 0x10

    iget-object v9, p0, Lorg/telegram/messenger/MessagesStorage$57;->val$chat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    iget-short v9, v9, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->key_use_count_out:S

    or-int/2addr v8, v9

    invoke-virtual {v6, v7, v8}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    const/16 v7, 0xc

    iget-object v8, p0, Lorg/telegram/messenger/MessagesStorage$57;->val$chat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    iget-wide v8, v8, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->exchange_id:J

    invoke-virtual {v6, v7, v8, v9}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(IJ)V

    const/16 v7, 0xd

    iget-object v8, p0, Lorg/telegram/messenger/MessagesStorage$57;->val$chat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    iget v8, v8, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->key_create_date:I

    invoke-virtual {v6, v7, v8}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    const/16 v7, 0xe

    iget-object v8, p0, Lorg/telegram/messenger/MessagesStorage$57;->val$chat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    iget-wide v8, v8, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->future_key_fingerprint:J

    invoke-virtual {v6, v7, v8, v9}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(IJ)V

    const/16 v7, 0xf

    invoke-virtual {v6, v7, v3}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindByteBuffer(ILorg/telegram/tgnet/NativeByteBuffer;)V

    const/16 v7, 0x10

    invoke-virtual {v6, v7, v4}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindByteBuffer(ILorg/telegram/tgnet/NativeByteBuffer;)V

    const/16 v7, 0x11

    iget-object v8, p0, Lorg/telegram/messenger/MessagesStorage$57;->val$chat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    iget v8, v8, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->in_seq_no:I

    invoke-virtual {v6, v7, v8}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    invoke-virtual {v6}, Lorg/telegram/SQLite/SQLitePreparedStatement;->step()I

    invoke-virtual {v6}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    invoke-virtual {v0}, Lorg/telegram/tgnet/NativeByteBuffer;->reuse()V

    invoke-virtual {v1}, Lorg/telegram/tgnet/NativeByteBuffer;->reuse()V

    invoke-virtual {v2}, Lorg/telegram/tgnet/NativeByteBuffer;->reuse()V

    invoke-virtual {v3}, Lorg/telegram/tgnet/NativeByteBuffer;->reuse()V

    invoke-virtual {v4}, Lorg/telegram/tgnet/NativeByteBuffer;->reuse()V

    iget-object v7, p0, Lorg/telegram/messenger/MessagesStorage$57;->val$dialog:Lorg/telegram/tgnet/TLRPC$TL_dialog;

    if-eqz v7, :cond_7

    iget-object v7, p0, Lorg/telegram/messenger/MessagesStorage$57;->this$0:Lorg/telegram/messenger/MessagesStorage;

    #getter for: Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;
    invoke-static {v7}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v7

    const-string/jumbo v8, "REPLACE INTO dialogs VALUES(?, ?, ?, ?, ?, ?, ?, ?, ?, ?)"

    invoke-virtual {v7, v8}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v6

    const/4 v7, 0x1

    iget-object v8, p0, Lorg/telegram/messenger/MessagesStorage$57;->val$dialog:Lorg/telegram/tgnet/TLRPC$TL_dialog;

    iget-wide v8, v8, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    invoke-virtual {v6, v7, v8, v9}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(IJ)V

    const/4 v7, 0x2

    iget-object v8, p0, Lorg/telegram/messenger/MessagesStorage$57;->val$dialog:Lorg/telegram/tgnet/TLRPC$TL_dialog;

    iget v8, v8, Lorg/telegram/tgnet/TLRPC$TL_dialog;->last_message_date:I

    invoke-virtual {v6, v7, v8}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    const/4 v7, 0x3

    iget-object v8, p0, Lorg/telegram/messenger/MessagesStorage$57;->val$dialog:Lorg/telegram/tgnet/TLRPC$TL_dialog;

    iget v8, v8, Lorg/telegram/tgnet/TLRPC$TL_dialog;->unread_count:I

    invoke-virtual {v6, v7, v8}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    const/4 v7, 0x4

    iget-object v8, p0, Lorg/telegram/messenger/MessagesStorage$57;->val$dialog:Lorg/telegram/tgnet/TLRPC$TL_dialog;

    iget v8, v8, Lorg/telegram/tgnet/TLRPC$TL_dialog;->top_message:I

    invoke-virtual {v6, v7, v8}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    const/4 v7, 0x5

    iget-object v8, p0, Lorg/telegram/messenger/MessagesStorage$57;->val$dialog:Lorg/telegram/tgnet/TLRPC$TL_dialog;

    iget v8, v8, Lorg/telegram/tgnet/TLRPC$TL_dialog;->read_inbox_max_id:I

    invoke-virtual {v6, v7, v8}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    const/4 v7, 0x6

    iget-object v8, p0, Lorg/telegram/messenger/MessagesStorage$57;->val$dialog:Lorg/telegram/tgnet/TLRPC$TL_dialog;

    iget v8, v8, Lorg/telegram/tgnet/TLRPC$TL_dialog;->read_outbox_max_id:I

    invoke-virtual {v6, v7, v8}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    const/4 v7, 0x7

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    const/16 v7, 0x8

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    const/16 v7, 0x9

    iget-object v8, p0, Lorg/telegram/messenger/MessagesStorage$57;->val$dialog:Lorg/telegram/tgnet/TLRPC$TL_dialog;

    iget v8, v8, Lorg/telegram/tgnet/TLRPC$TL_dialog;->pts:I

    invoke-virtual {v6, v7, v8}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    const/16 v7, 0xa

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    invoke-virtual {v6}, Lorg/telegram/SQLite/SQLitePreparedStatement;->step()I

    invoke-virtual {v6}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_7
    :goto_3
    return-void

    :cond_8
    move v8, v7

    goto/16 :goto_0

    :cond_9
    move v8, v7

    goto/16 :goto_1

    :cond_a
    move v8, v7

    goto/16 :goto_2

    :catch_0
    move-exception v5

    const-string/jumbo v7, "tmessages"

    invoke-static {v7, v5}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3
.end method
