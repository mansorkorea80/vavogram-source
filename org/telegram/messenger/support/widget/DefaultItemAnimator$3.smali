.class Lorg/telegram/messenger/support/widget/DefaultItemAnimator$3;
.super Ljava/lang/Object;
.source "DefaultItemAnimator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/support/widget/DefaultItemAnimator;->runPendingAnimations()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/support/widget/DefaultItemAnimator;

.field final synthetic val$additions:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/support/widget/DefaultItemAnimator;Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/messenger/support/widget/DefaultItemAnimator$3;->this$0:Lorg/telegram/messenger/support/widget/DefaultItemAnimator;

    iput-object p2, p0, Lorg/telegram/messenger/support/widget/DefaultItemAnimator$3;->val$additions:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v1, p0, Lorg/telegram/messenger/support/widget/DefaultItemAnimator$3;->val$additions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    iget-object v2, p0, Lorg/telegram/messenger/support/widget/DefaultItemAnimator$3;->this$0:Lorg/telegram/messenger/support/widget/DefaultItemAnimator;

    #calls: Lorg/telegram/messenger/support/widget/DefaultItemAnimator;->animateAddImpl(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)V
    invoke-static {v2, v0}, Lorg/telegram/messenger/support/widget/DefaultItemAnimator;->access$400(Lorg/telegram/messenger/support/widget/DefaultItemAnimator;Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lorg/telegram/messenger/support/widget/DefaultItemAnimator$3;->val$additions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-object v1, p0, Lorg/telegram/messenger/support/widget/DefaultItemAnimator$3;->this$0:Lorg/telegram/messenger/support/widget/DefaultItemAnimator;

    #getter for: Lorg/telegram/messenger/support/widget/DefaultItemAnimator;->mAdditionsList:Ljava/util/ArrayList;
    invoke-static {v1}, Lorg/telegram/messenger/support/widget/DefaultItemAnimator;->access$500(Lorg/telegram/messenger/support/widget/DefaultItemAnimator;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/messenger/support/widget/DefaultItemAnimator$3;->val$additions:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method
