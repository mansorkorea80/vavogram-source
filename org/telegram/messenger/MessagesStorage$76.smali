.class Lorg/telegram/messenger/MessagesStorage$76;
.super Ljava/lang/Object;
.source "MessagesStorage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/MessagesStorage;->putMessages(Lorg/telegram/tgnet/TLRPC$messages_Messages;JIIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/MessagesStorage;

.field final synthetic val$createDialog:Z

.field final synthetic val$dialog_id:J

.field final synthetic val$load_type:I

.field final synthetic val$max_id:I

.field final synthetic val$messages:Lorg/telegram/tgnet/TLRPC$messages_Messages;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/MessagesStorage;Lorg/telegram/tgnet/TLRPC$messages_Messages;IJIZ)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/messenger/MessagesStorage$76;->this$0:Lorg/telegram/messenger/MessagesStorage;

    iput-object p2, p0, Lorg/telegram/messenger/MessagesStorage$76;->val$messages:Lorg/telegram/tgnet/TLRPC$messages_Messages;

    iput p3, p0, Lorg/telegram/messenger/MessagesStorage$76;->val$load_type:I

    iput-wide p4, p0, Lorg/telegram/messenger/MessagesStorage$76;->val$dialog_id:J

    iput p6, p0, Lorg/telegram/messenger/MessagesStorage$76;->val$max_id:I

    iput-boolean p7, p0, Lorg/telegram/messenger/MessagesStorage$76;->val$createDialog:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 35

    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/MessagesStorage$76;->val$messages:Lorg/telegram/tgnet/TLRPC$messages_Messages;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$messages_Messages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/messenger/MessagesStorage$76;->val$load_type:I

    if-nez v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/MessagesStorage$76;->this$0:Lorg/telegram/messenger/MessagesStorage;

    const-string/jumbo v5, "messages_holes"

    move-object/from16 v0, p0

    iget-wide v6, v0, Lorg/telegram/messenger/MessagesStorage$76;->val$dialog_id:J

    move-object/from16 v0, p0

    iget v9, v0, Lorg/telegram/messenger/MessagesStorage$76;->val$max_id:I

    #calls: Lorg/telegram/messenger/MessagesStorage;->doneHolesInTable(Ljava/lang/String;JI)V
    invoke-static {v4, v5, v6, v7, v9}, Lorg/telegram/messenger/MessagesStorage;->access$1700(Lorg/telegram/messenger/MessagesStorage;Ljava/lang/String;JI)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/MessagesStorage$76;->this$0:Lorg/telegram/messenger/MessagesStorage;

    move-object/from16 v0, p0

    iget-wide v6, v0, Lorg/telegram/messenger/MessagesStorage$76;->val$dialog_id:J

    move-object/from16 v0, p0

    iget v5, v0, Lorg/telegram/messenger/MessagesStorage$76;->val$max_id:I

    const/4 v9, -0x1

    invoke-virtual {v4, v6, v7, v5, v9}, Lorg/telegram/messenger/MessagesStorage;->doneHolesInMedia(JII)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/MessagesStorage$76;->this$0:Lorg/telegram/messenger/MessagesStorage;

    #getter for: Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;
    invoke-static {v4}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/SQLite/SQLiteDatabase;->beginTransaction()V

    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/messenger/MessagesStorage$76;->val$load_type:I

    if-nez v4, :cond_7

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/MessagesStorage$76;->val$messages:Lorg/telegram/tgnet/TLRPC$messages_Messages;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$messages_Messages;->messages:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/MessagesStorage$76;->val$messages:Lorg/telegram/tgnet/TLRPC$messages_Messages;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$messages_Messages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$Message;

    iget v8, v4, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/MessagesStorage$76;->this$0:Lorg/telegram/messenger/MessagesStorage;

    const-string/jumbo v5, "messages_holes"

    move-object/from16 v0, p0

    iget-wide v6, v0, Lorg/telegram/messenger/MessagesStorage$76;->val$dialog_id:J

    move-object/from16 v0, p0

    iget v9, v0, Lorg/telegram/messenger/MessagesStorage$76;->val$max_id:I

    #calls: Lorg/telegram/messenger/MessagesStorage;->closeHolesInTable(Ljava/lang/String;JII)V
    invoke-static/range {v4 .. v9}, Lorg/telegram/messenger/MessagesStorage;->access$1800(Lorg/telegram/messenger/MessagesStorage;Ljava/lang/String;JII)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/MessagesStorage$76;->this$0:Lorg/telegram/messenger/MessagesStorage;

    move-object/from16 v0, p0

    iget-wide v6, v0, Lorg/telegram/messenger/MessagesStorage$76;->val$dialog_id:J

    move-object/from16 v0, p0

    iget v9, v0, Lorg/telegram/messenger/MessagesStorage$76;->val$max_id:I

    const/4 v10, -0x1

    invoke-virtual/range {v5 .. v10}, Lorg/telegram/messenger/MessagesStorage;->closeHolesInMedia(JIII)V

    :cond_2
    :goto_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/MessagesStorage$76;->val$messages:Lorg/telegram/tgnet/TLRPC$messages_Messages;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$messages_Messages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v20

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/MessagesStorage$76;->this$0:Lorg/telegram/messenger/MessagesStorage;

    #getter for: Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;
    invoke-static {v4}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v4

    const-string/jumbo v5, "REPLACE INTO messages VALUES(?, ?, ?, ?, ?, ?, ?, ?, ?, NULL, ?)"

    invoke-virtual {v4, v5}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v31

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/MessagesStorage$76;->this$0:Lorg/telegram/messenger/MessagesStorage;

    #getter for: Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;
    invoke-static {v4}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v4

    const-string/jumbo v5, "REPLACE INTO media_v2 VALUES(?, ?, ?, ?, ?)"

    invoke-virtual {v4, v5}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v32

    const/16 v34, 0x0

    const/16 v18, 0x0

    const v27, 0x7fffffff

    const/16 v25, 0x0

    const/16 v19, 0x0

    const/16 v17, 0x0

    :goto_2
    move/from16 v0, v17

    move/from16 v1, v20

    if-ge v0, v1, :cond_13

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/MessagesStorage$76;->val$messages:Lorg/telegram/tgnet/TLRPC$messages_Messages;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$messages_Messages;->messages:Ljava/util/ArrayList;

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v0, v26

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    int-to-long v0, v4

    move-wide/from16 v28, v0

    if-nez v19, :cond_3

    move-object/from16 v0, v26

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v0, v4, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    move/from16 v19, v0

    :cond_3
    move-object/from16 v0, v26

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    if-eqz v4, :cond_4

    move/from16 v0, v19

    int-to-long v4, v0

    const/16 v6, 0x20

    shl-long/2addr v4, v6

    or-long v28, v28, v4

    :cond_4
    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/messenger/MessagesStorage$76;->val$load_type:I

    const/4 v5, -0x2

    if-ne v4, v5, :cond_b

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/MessagesStorage$76;->this$0:Lorg/telegram/messenger/MessagesStorage;

    #getter for: Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;
    invoke-static {v4}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v4

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v6, "SELECT mid, data, ttl FROM messages WHERE mid = %d"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static/range {v28 .. v29}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v7, v9

    invoke-static {v5, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v4, v5, v6}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v24

    if-eqz v24, :cond_5

    const/4 v4, 0x1

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Lorg/telegram/SQLite/SQLiteCursor;->byteBufferValue(I)Lorg/telegram/tgnet/NativeByteBuffer;

    move-result-object v22

    if-eqz v22, :cond_5

    const/4 v4, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Lorg/telegram/tgnet/NativeByteBuffer;->readInt32(Z)I

    move-result v4

    const/4 v5, 0x0

    move-object/from16 v0, v22

    invoke-static {v0, v4, v5}, Lorg/telegram/tgnet/TLRPC$Message;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Message;

    move-result-object v30

    invoke-virtual/range {v22 .. v22}, Lorg/telegram/tgnet/NativeByteBuffer;->reuse()V

    if-eqz v30, :cond_5

    move-object/from16 v0, v30

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    move-object/from16 v0, v26

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    const/4 v4, 0x2

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v4

    move-object/from16 v0, v26

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->ttl:I

    :cond_5
    invoke-virtual/range {v21 .. v21}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    if-nez v24, :cond_b

    :cond_6
    :goto_3
    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_2

    :cond_7
    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/messenger/MessagesStorage$76;->val$load_type:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_8

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/MessagesStorage$76;->val$messages:Lorg/telegram/tgnet/TLRPC$messages_Messages;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$messages_Messages;->messages:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$Message;

    iget v15, v4, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/telegram/messenger/MessagesStorage$76;->this$0:Lorg/telegram/messenger/MessagesStorage;

    const-string/jumbo v11, "messages_holes"

    move-object/from16 v0, p0

    iget-wide v12, v0, Lorg/telegram/messenger/MessagesStorage$76;->val$dialog_id:J

    move-object/from16 v0, p0

    iget v14, v0, Lorg/telegram/messenger/MessagesStorage$76;->val$max_id:I

    #calls: Lorg/telegram/messenger/MessagesStorage;->closeHolesInTable(Ljava/lang/String;JII)V
    invoke-static/range {v10 .. v15}, Lorg/telegram/messenger/MessagesStorage;->access$1800(Lorg/telegram/messenger/MessagesStorage;Ljava/lang/String;JII)V

    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/messenger/MessagesStorage$76;->this$0:Lorg/telegram/messenger/MessagesStorage;

    move-object/from16 v0, p0

    iget-wide v12, v0, Lorg/telegram/messenger/MessagesStorage$76;->val$dialog_id:J

    move-object/from16 v0, p0

    iget v14, v0, Lorg/telegram/messenger/MessagesStorage$76;->val$max_id:I

    const/16 v16, -0x1

    invoke-virtual/range {v11 .. v16}, Lorg/telegram/messenger/MessagesStorage;->closeHolesInMedia(JIII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    :catch_0
    move-exception v23

    const-string/jumbo v4, "tmessages"

    move-object/from16 v0, v23

    invoke-static {v4, v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    :cond_8
    :try_start_1
    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/messenger/MessagesStorage$76;->val$load_type:I

    const/4 v5, 0x3

    if-eq v4, v5, :cond_9

    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/messenger/MessagesStorage$76;->val$load_type:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_2

    :cond_9
    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/messenger/MessagesStorage$76;->val$max_id:I

    if-nez v4, :cond_a

    const v15, 0x7fffffff

    :goto_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/MessagesStorage$76;->val$messages:Lorg/telegram/tgnet/TLRPC$messages_Messages;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$messages_Messages;->messages:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/MessagesStorage$76;->val$messages:Lorg/telegram/tgnet/TLRPC$messages_Messages;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$messages_Messages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$Message;

    iget v8, v4, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/MessagesStorage$76;->this$0:Lorg/telegram/messenger/MessagesStorage;

    const-string/jumbo v5, "messages_holes"

    move-object/from16 v0, p0

    iget-wide v6, v0, Lorg/telegram/messenger/MessagesStorage$76;->val$dialog_id:J

    move v9, v15

    #calls: Lorg/telegram/messenger/MessagesStorage;->closeHolesInTable(Ljava/lang/String;JII)V
    invoke-static/range {v4 .. v9}, Lorg/telegram/messenger/MessagesStorage;->access$1800(Lorg/telegram/messenger/MessagesStorage;Ljava/lang/String;JII)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/MessagesStorage$76;->this$0:Lorg/telegram/messenger/MessagesStorage;

    move-object/from16 v0, p0

    iget-wide v6, v0, Lorg/telegram/messenger/MessagesStorage$76;->val$dialog_id:J

    const/4 v10, -0x1

    move v9, v15

    invoke-virtual/range {v5 .. v10}, Lorg/telegram/messenger/MessagesStorage;->closeHolesInMedia(JIII)V

    goto/16 :goto_1

    :cond_a
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/MessagesStorage$76;->val$messages:Lorg/telegram/tgnet/TLRPC$messages_Messages;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$messages_Messages;->messages:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$Message;

    iget v15, v4, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    goto :goto_4

    :cond_b
    if-nez v17, :cond_c

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lorg/telegram/messenger/MessagesStorage$76;->val$createDialog:Z

    if-eqz v4, :cond_c

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/MessagesStorage$76;->this$0:Lorg/telegram/messenger/MessagesStorage;

    #getter for: Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;
    invoke-static {v4}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v4

    const-string/jumbo v5, "REPLACE INTO dialogs VALUES(?, ?, ?, ?, ?, ?, ?, ?, ?, ?)"

    invoke-virtual {v4, v5}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v33

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iget-wide v6, v0, Lorg/telegram/messenger/MessagesStorage$76;->val$dialog_id:J

    move-object/from16 v0, v33

    invoke-virtual {v0, v4, v6, v7}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(IJ)V

    const/4 v4, 0x2

    move-object/from16 v0, v26

    iget v5, v0, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    move-object/from16 v0, v33

    invoke-virtual {v0, v4, v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    const/4 v4, 0x3

    const/4 v5, 0x0

    move-object/from16 v0, v33

    invoke-virtual {v0, v4, v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    const/4 v4, 0x4

    move-object/from16 v0, v33

    move-wide/from16 v1, v28

    invoke-virtual {v0, v4, v1, v2}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(IJ)V

    const/4 v4, 0x5

    move-object/from16 v0, v26

    iget v5, v0, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    move-object/from16 v0, v33

    invoke-virtual {v0, v4, v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    const/4 v4, 0x6

    const/4 v5, 0x0

    move-object/from16 v0, v33

    invoke-virtual {v0, v4, v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    const/4 v4, 0x7

    move-object/from16 v0, v33

    move-wide/from16 v1, v28

    invoke-virtual {v0, v4, v1, v2}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(IJ)V

    const/16 v4, 0x8

    move-object/from16 v0, v26

    iget v5, v0, Lorg/telegram/tgnet/TLRPC$Message;->ttl:I

    move-object/from16 v0, v33

    invoke-virtual {v0, v4, v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    const/16 v4, 0x9

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/MessagesStorage$76;->val$messages:Lorg/telegram/tgnet/TLRPC$messages_Messages;

    iget v5, v5, Lorg/telegram/tgnet/TLRPC$messages_Messages;->pts:I

    move-object/from16 v0, v33

    invoke-virtual {v0, v4, v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    const/16 v4, 0xa

    move-object/from16 v0, v26

    iget v5, v0, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    move-object/from16 v0, v33

    invoke-virtual {v0, v4, v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    invoke-virtual/range {v33 .. v33}, Lorg/telegram/SQLite/SQLitePreparedStatement;->step()I

    invoke-virtual/range {v33 .. v33}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    :cond_c
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/MessagesStorage$76;->this$0:Lorg/telegram/messenger/MessagesStorage;

    move-object/from16 v0, v26

    #calls: Lorg/telegram/messenger/MessagesStorage;->fixUnsupportedMedia(Lorg/telegram/tgnet/TLRPC$Message;)V
    invoke-static {v4, v0}, Lorg/telegram/messenger/MessagesStorage;->access$1900(Lorg/telegram/messenger/MessagesStorage;Lorg/telegram/tgnet/TLRPC$Message;)V

    invoke-virtual/range {v31 .. v31}, Lorg/telegram/SQLite/SQLitePreparedStatement;->requery()V

    new-instance v22, Lorg/telegram/tgnet/NativeByteBuffer;

    invoke-virtual/range {v26 .. v26}, Lorg/telegram/tgnet/TLRPC$Message;->getObjectSize()I

    move-result v4

    move-object/from16 v0, v22

    invoke-direct {v0, v4}, Lorg/telegram/tgnet/NativeByteBuffer;-><init>(I)V

    move-object/from16 v0, v26

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/telegram/tgnet/TLRPC$Message;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    const/4 v4, 0x1

    move-object/from16 v0, v31

    move-wide/from16 v1, v28

    invoke-virtual {v0, v4, v1, v2}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(IJ)V

    const/4 v4, 0x2

    move-object/from16 v0, p0

    iget-wide v6, v0, Lorg/telegram/messenger/MessagesStorage$76;->val$dialog_id:J

    move-object/from16 v0, v31

    invoke-virtual {v0, v4, v6, v7}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(IJ)V

    const/4 v4, 0x3

    invoke-static/range {v26 .. v26}, Lorg/telegram/messenger/MessageObject;->getUnreadFlags(Lorg/telegram/tgnet/TLRPC$Message;)I

    move-result v5

    move-object/from16 v0, v31

    invoke-virtual {v0, v4, v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    const/4 v4, 0x4

    move-object/from16 v0, v26

    iget v5, v0, Lorg/telegram/tgnet/TLRPC$Message;->send_state:I

    move-object/from16 v0, v31

    invoke-virtual {v0, v4, v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    const/4 v4, 0x5

    move-object/from16 v0, v26

    iget v5, v0, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    move-object/from16 v0, v31

    invoke-virtual {v0, v4, v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    const/4 v4, 0x6

    move-object/from16 v0, v31

    move-object/from16 v1, v22

    invoke-virtual {v0, v4, v1}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindByteBuffer(ILorg/telegram/tgnet/NativeByteBuffer;)V

    const/4 v5, 0x7

    invoke-static/range {v26 .. v26}, Lorg/telegram/messenger/MessageObject;->isOut(Lorg/telegram/tgnet/TLRPC$Message;)Z

    move-result v4

    if-eqz v4, :cond_11

    const/4 v4, 0x1

    :goto_5
    move-object/from16 v0, v31

    invoke-virtual {v0, v5, v4}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    const/16 v4, 0x8

    const/4 v5, 0x0

    move-object/from16 v0, v31

    invoke-virtual {v0, v4, v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    move-object/from16 v0, v26

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    and-int/lit16 v4, v4, 0x400

    if-eqz v4, :cond_12

    const/16 v4, 0x9

    move-object/from16 v0, v26

    iget v5, v0, Lorg/telegram/tgnet/TLRPC$Message;->views:I

    move-object/from16 v0, v31

    invoke-virtual {v0, v4, v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    :goto_6
    const/16 v4, 0xa

    const/4 v5, 0x0

    move-object/from16 v0, v31

    invoke-virtual {v0, v4, v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    invoke-virtual/range {v31 .. v31}, Lorg/telegram/SQLite/SQLitePreparedStatement;->step()I

    invoke-static/range {v26 .. v26}, Lorg/telegram/messenger/query/SharedMediaQuery;->canAddMessageToMedia(Lorg/telegram/tgnet/TLRPC$Message;)Z

    move-result v4

    if-eqz v4, :cond_d

    invoke-virtual/range {v32 .. v32}, Lorg/telegram/SQLite/SQLitePreparedStatement;->requery()V

    const/4 v4, 0x1

    move-object/from16 v0, v32

    move-wide/from16 v1, v28

    invoke-virtual {v0, v4, v1, v2}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(IJ)V

    const/4 v4, 0x2

    move-object/from16 v0, p0

    iget-wide v6, v0, Lorg/telegram/messenger/MessagesStorage$76;->val$dialog_id:J

    move-object/from16 v0, v32

    invoke-virtual {v0, v4, v6, v7}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(IJ)V

    const/4 v4, 0x3

    move-object/from16 v0, v26

    iget v5, v0, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    move-object/from16 v0, v32

    invoke-virtual {v0, v4, v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    const/4 v4, 0x4

    invoke-static/range {v26 .. v26}, Lorg/telegram/messenger/query/SharedMediaQuery;->getMediaType(Lorg/telegram/tgnet/TLRPC$Message;)I

    move-result v5

    move-object/from16 v0, v32

    invoke-virtual {v0, v4, v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    const/4 v4, 0x5

    move-object/from16 v0, v32

    move-object/from16 v1, v22

    invoke-virtual {v0, v4, v1}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindByteBuffer(ILorg/telegram/tgnet/NativeByteBuffer;)V

    invoke-virtual/range {v32 .. v32}, Lorg/telegram/SQLite/SQLitePreparedStatement;->step()I

    :cond_d
    invoke-virtual/range {v22 .. v22}, Lorg/telegram/tgnet/NativeByteBuffer;->reuse()V

    move-object/from16 v0, v26

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v4, v4, Lorg/telegram/tgnet/TLRPC$TL_messageMediaWebPage;

    if-eqz v4, :cond_f

    move-object/from16 v0, v26

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    instance-of v4, v4, Lorg/telegram/tgnet/TLRPC$TL_webPagePending;

    if-eqz v4, :cond_f

    if-nez v34, :cond_e

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/MessagesStorage$76;->this$0:Lorg/telegram/messenger/MessagesStorage;

    #getter for: Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;
    invoke-static {v4}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v4

    const-string/jumbo v5, "REPLACE INTO webpage_pending VALUES(?, ?)"

    invoke-virtual {v4, v5}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v34

    :cond_e
    invoke-virtual/range {v34 .. v34}, Lorg/telegram/SQLite/SQLitePreparedStatement;->requery()V

    const/4 v4, 0x1

    move-object/from16 v0, v26

    iget-object v5, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$MessageMedia;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    iget-wide v6, v5, Lorg/telegram/tgnet/TLRPC$WebPage;->id:J

    move-object/from16 v0, v34

    invoke-virtual {v0, v4, v6, v7}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(IJ)V

    const/4 v4, 0x2

    move-object/from16 v0, v34

    move-wide/from16 v1, v28

    invoke-virtual {v0, v4, v1, v2}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(IJ)V

    invoke-virtual/range {v34 .. v34}, Lorg/telegram/SQLite/SQLitePreparedStatement;->step()I

    :cond_f
    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/messenger/MessagesStorage$76;->val$load_type:I

    if-nez v4, :cond_6

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/MessagesStorage$76;->this$0:Lorg/telegram/messenger/MessagesStorage;

    move-object/from16 v0, v26

    #calls: Lorg/telegram/messenger/MessagesStorage;->isValidKeyboardToSave(Lorg/telegram/tgnet/TLRPC$Message;)Z
    invoke-static {v4, v0}, Lorg/telegram/messenger/MessagesStorage;->access$2000(Lorg/telegram/messenger/MessagesStorage;Lorg/telegram/tgnet/TLRPC$Message;)Z

    move-result v4

    if-eqz v4, :cond_6

    if-eqz v18, :cond_10

    move-object/from16 v0, v18

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    move-object/from16 v0, v26

    iget v5, v0, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    if-ge v4, v5, :cond_6

    :cond_10
    move-object/from16 v18, v26

    goto/16 :goto_3

    :cond_11
    const/4 v4, 0x0

    goto/16 :goto_5

    :cond_12
    const/16 v4, 0x9

    const/4 v5, 0x0

    move-object/from16 v0, v31

    invoke-virtual {v0, v4, v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    goto/16 :goto_6

    :cond_13
    invoke-virtual/range {v31 .. v31}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    invoke-virtual/range {v32 .. v32}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    if-eqz v34, :cond_14

    invoke-virtual/range {v34 .. v34}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    :cond_14
    if-eqz v18, :cond_15

    move-object/from16 v0, p0

    iget-wide v4, v0, Lorg/telegram/messenger/MessagesStorage$76;->val$dialog_id:J

    move-object/from16 v0, v18

    invoke-static {v4, v5, v0}, Lorg/telegram/messenger/query/BotQuery;->putBotKeyboard(JLorg/telegram/tgnet/TLRPC$Message;)V

    :cond_15
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/MessagesStorage$76;->this$0:Lorg/telegram/messenger/MessagesStorage;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/MessagesStorage$76;->val$messages:Lorg/telegram/tgnet/TLRPC$messages_Messages;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$messages_Messages;->users:Ljava/util/ArrayList;

    #calls: Lorg/telegram/messenger/MessagesStorage;->putUsersInternal(Ljava/util/ArrayList;)V
    invoke-static {v4, v5}, Lorg/telegram/messenger/MessagesStorage;->access$2100(Lorg/telegram/messenger/MessagesStorage;Ljava/util/ArrayList;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/MessagesStorage$76;->this$0:Lorg/telegram/messenger/MessagesStorage;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/MessagesStorage$76;->val$messages:Lorg/telegram/tgnet/TLRPC$messages_Messages;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$messages_Messages;->chats:Ljava/util/ArrayList;

    #calls: Lorg/telegram/messenger/MessagesStorage;->putChatsInternal(Ljava/util/ArrayList;)V
    invoke-static {v4, v5}, Lorg/telegram/messenger/MessagesStorage;->access$2200(Lorg/telegram/messenger/MessagesStorage;Ljava/util/ArrayList;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/MessagesStorage$76;->this$0:Lorg/telegram/messenger/MessagesStorage;

    #getter for: Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;
    invoke-static {v4}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/SQLite/SQLiteDatabase;->commitTransaction()V

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lorg/telegram/messenger/MessagesStorage$76;->val$createDialog:Z

    if-eqz v4, :cond_0

    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v4

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const/4 v6, 0x0

    move/from16 v0, v19

    invoke-virtual {v4, v5, v6, v0}, Lorg/telegram/messenger/MessagesStorage;->updateDialogsWithDeletedMessages(Ljava/util/ArrayList;ZI)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method
