.class Lorg/telegram/messenger/ContactsController$6$2;
.super Ljava/lang/Object;
.source "ContactsController.java"

# interfaces
.implements Lorg/telegram/tgnet/RequestDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/ContactsController$6;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/messenger/ContactsController$6;

.field final synthetic val$contactsBookShort:Ljava/util/HashMap;

.field final synthetic val$contactsMap:Ljava/util/HashMap;

.field final synthetic val$contactsMapToSave:Ljava/util/HashMap;

.field final synthetic val$count:I


# direct methods
.method constructor <init>(Lorg/telegram/messenger/ContactsController$6;Ljava/util/HashMap;ILjava/util/HashMap;Ljava/util/HashMap;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/messenger/ContactsController$6$2;->this$1:Lorg/telegram/messenger/ContactsController$6;

    iput-object p2, p0, Lorg/telegram/messenger/ContactsController$6$2;->val$contactsMapToSave:Ljava/util/HashMap;

    iput p3, p0, Lorg/telegram/messenger/ContactsController$6$2;->val$count:I

    iput-object p4, p0, Lorg/telegram/messenger/ContactsController$6$2;->val$contactsBookShort:Ljava/util/HashMap;

    iput-object p5, p0, Lorg/telegram/messenger/ContactsController$6$2;->val$contactsMap:Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 10

    const/4 v9, 0x1

    iget-object v6, p0, Lorg/telegram/messenger/ContactsController$6$2;->this$1:Lorg/telegram/messenger/ContactsController$6;

    iget-object v6, v6, Lorg/telegram/messenger/ContactsController$6;->this$0:Lorg/telegram/messenger/ContactsController;

    invoke-static {v6}, Lorg/telegram/messenger/ContactsController;->access$008(Lorg/telegram/messenger/ContactsController;)I

    if-nez p2, :cond_4

    const-string/jumbo v6, "tmessages"

    const-string/jumbo v7, "contacts imported"

    invoke-static {v6, v7}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v3, p1

    check-cast v3, Lorg/telegram/tgnet/TLRPC$TL_contacts_importedContacts;

    iget-object v6, v3, Lorg/telegram/tgnet/TLRPC$TL_contacts_importedContacts;->retry_contacts:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_0

    const/4 v0, 0x0

    :goto_0
    iget-object v6, v3, Lorg/telegram/tgnet/TLRPC$TL_contacts_importedContacts;->retry_contacts:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v0, v6, :cond_0

    iget-object v6, v3, Lorg/telegram/tgnet/TLRPC$TL_contacts_importedContacts;->retry_contacts:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iget-object v6, p0, Lorg/telegram/messenger/ContactsController$6$2;->val$contactsMapToSave:Ljava/util/HashMap;

    long-to-int v7, v4

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v6, p0, Lorg/telegram/messenger/ContactsController$6$2;->this$1:Lorg/telegram/messenger/ContactsController$6;

    iget-object v6, v6, Lorg/telegram/messenger/ContactsController$6;->this$0:Lorg/telegram/messenger/ContactsController;

    #getter for: Lorg/telegram/messenger/ContactsController;->completedRequestsCount:I
    invoke-static {v6}, Lorg/telegram/messenger/ContactsController;->access$000(Lorg/telegram/messenger/ContactsController;)I

    move-result v6

    iget v7, p0, Lorg/telegram/messenger/ContactsController$6$2;->val$count:I

    if-ne v6, v7, :cond_1

    iget-object v6, p0, Lorg/telegram/messenger/ContactsController$6$2;->val$contactsMapToSave:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_1

    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v6

    iget-object v7, p0, Lorg/telegram/messenger/ContactsController$6$2;->val$contactsMapToSave:Ljava/util/HashMap;

    invoke-virtual {v6, v7}, Lorg/telegram/messenger/MessagesStorage;->putCachedPhoneBook(Ljava/util/HashMap;)V

    :cond_1
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v6

    iget-object v7, v3, Lorg/telegram/tgnet/TLRPC$TL_contacts_importedContacts;->users:Ljava/util/ArrayList;

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8, v9, v9}, Lorg/telegram/messenger/MessagesStorage;->putUsersAndChats(Ljava/util/ArrayList;Ljava/util/ArrayList;ZZ)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    :goto_1
    iget-object v6, v3, Lorg/telegram/tgnet/TLRPC$TL_contacts_importedContacts;->imported:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v0, v6, :cond_2

    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_contact;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_contact;-><init>()V

    iget-object v6, v3, Lorg/telegram/tgnet/TLRPC$TL_contacts_importedContacts;->imported:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/tgnet/TLRPC$TL_importedContact;

    iget v6, v6, Lorg/telegram/tgnet/TLRPC$TL_importedContact;->user_id:I

    iput v6, v2, Lorg/telegram/tgnet/TLRPC$TL_contact;->user_id:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    iget-object v6, p0, Lorg/telegram/messenger/ContactsController$6$2;->this$1:Lorg/telegram/messenger/ContactsController$6;

    iget-object v6, v6, Lorg/telegram/messenger/ContactsController$6;->this$0:Lorg/telegram/messenger/ContactsController;

    iget-object v7, v3, Lorg/telegram/tgnet/TLRPC$TL_contacts_importedContacts;->users:Ljava/util/ArrayList;

    const/4 v8, 0x2

    invoke-virtual {v6, v1, v7, v8}, Lorg/telegram/messenger/ContactsController;->processLoadedContacts(Ljava/util/ArrayList;Ljava/util/ArrayList;I)V

    :goto_2
    iget-object v6, p0, Lorg/telegram/messenger/ContactsController$6$2;->this$1:Lorg/telegram/messenger/ContactsController$6;

    iget-object v6, v6, Lorg/telegram/messenger/ContactsController$6;->this$0:Lorg/telegram/messenger/ContactsController;

    #getter for: Lorg/telegram/messenger/ContactsController;->completedRequestsCount:I
    invoke-static {v6}, Lorg/telegram/messenger/ContactsController;->access$000(Lorg/telegram/messenger/ContactsController;)I

    move-result v6

    iget v7, p0, Lorg/telegram/messenger/ContactsController$6$2;->val$count:I

    if-ne v6, v7, :cond_3

    sget-object v6, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v7, Lorg/telegram/messenger/ContactsController$6$2$1;

    invoke-direct {v7, p0}, Lorg/telegram/messenger/ContactsController$6$2$1;-><init>(Lorg/telegram/messenger/ContactsController$6$2;)V

    invoke-virtual {v6, v7}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    :cond_3
    return-void

    :cond_4
    const-string/jumbo v6, "tmessages"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "import contacts error "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p2, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method
