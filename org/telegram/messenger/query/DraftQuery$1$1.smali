.class Lorg/telegram/messenger/query/DraftQuery$1$1;
.super Ljava/lang/Object;
.source "DraftQuery.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/query/DraftQuery$1;->run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/query/DraftQuery$1;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/query/DraftQuery$1;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/messenger/query/DraftQuery$1$1;->this$0:Lorg/telegram/messenger/query/DraftQuery$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x1

    sput-boolean v0, Lorg/telegram/messenger/UserConfig;->draftsLoaded:Z

    invoke-static {v1}, Lorg/telegram/messenger/query/DraftQuery;->access$002(Z)Z

    invoke-static {v1}, Lorg/telegram/messenger/UserConfig;->saveConfig(Z)V

    return-void
.end method
