.class Lorg/telegram/khalkhaloka/Index_p$29;
.super Ljava/lang/Object;
.source "Index_p.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/khalkhaloka/Index_p;->onTransitionAnimationEnd(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/khalkhaloka/Index_p;


# direct methods
.method constructor <init>(Lorg/telegram/khalkhaloka/Index_p;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/khalkhaloka/Index_p$29;->this$0:Lorg/telegram/khalkhaloka/Index_p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lorg/telegram/khalkhaloka/Index_p$29;->this$0:Lorg/telegram/khalkhaloka/Index_p;

    iget-object v0, v0, Lorg/telegram/khalkhaloka/Index_p;->ed_name:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/khalkhaloka/Index_p$29;->this$0:Lorg/telegram/khalkhaloka/Index_p;

    iget-object v0, v0, Lorg/telegram/khalkhaloka/Index_p;->ed_name:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    iget-object v0, p0, Lorg/telegram/khalkhaloka/Index_p$29;->this$0:Lorg/telegram/khalkhaloka/Index_p;

    iget-object v0, v0, Lorg/telegram/khalkhaloka/Index_p;->ed_name:Landroid/widget/EditText;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->showKeyboard(Landroid/view/View;)V

    :cond_0
    return-void
.end method
