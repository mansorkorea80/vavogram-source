.class Lorg/telegram/messenger/query/StickersQuery$23$1;
.super Ljava/lang/Object;
.source "StickersQuery.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/query/StickersQuery$23;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/query/StickersQuery$23;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/query/StickersQuery$23;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/messenger/query/StickersQuery$23$1;->this$0:Lorg/telegram/messenger/query/StickersQuery$23;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lorg/telegram/messenger/query/StickersQuery$23$1;->this$0:Lorg/telegram/messenger/query/StickersQuery$23;

    iget-object v0, v0, Lorg/telegram/messenger/query/StickersQuery$23;->val$res:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/query/StickersQuery$23$1;->this$0:Lorg/telegram/messenger/query/StickersQuery$23;

    iget v0, v0, Lorg/telegram/messenger/query/StickersQuery$23;->val$hash:I

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/telegram/messenger/query/StickersQuery;->access$2300()[I

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/messenger/query/StickersQuery$23$1;->this$0:Lorg/telegram/messenger/query/StickersQuery$23;

    iget v1, v1, Lorg/telegram/messenger/query/StickersQuery$23;->val$type:I

    iget-object v2, p0, Lorg/telegram/messenger/query/StickersQuery$23$1;->this$0:Lorg/telegram/messenger/query/StickersQuery$23;

    iget v2, v2, Lorg/telegram/messenger/query/StickersQuery$23;->val$hash:I

    aput v2, v0, v1

    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/query/StickersQuery$23$1;->this$0:Lorg/telegram/messenger/query/StickersQuery$23;

    iget v0, v0, Lorg/telegram/messenger/query/StickersQuery$23;->val$type:I

    invoke-static {v0, v3, v3}, Lorg/telegram/messenger/query/StickersQuery;->loadStickers(IZZ)V

    return-void
.end method
