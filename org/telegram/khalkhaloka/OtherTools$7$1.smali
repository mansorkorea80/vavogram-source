.class Lorg/telegram/khalkhaloka/OtherTools$7$1;
.super Ljava/lang/Object;
.source "OtherTools.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/khalkhaloka/OtherTools$7;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/khalkhaloka/OtherTools$7;

.field final synthetic val$dialog_co_alert:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Lorg/telegram/khalkhaloka/OtherTools$7;Landroid/app/Dialog;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/khalkhaloka/OtherTools$7$1;->this$1:Lorg/telegram/khalkhaloka/OtherTools$7;

    iput-object p2, p0, Lorg/telegram/khalkhaloka/OtherTools$7$1;->val$dialog_co_alert:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lorg/telegram/khalkhaloka/OtherTools$7$1;->this$1:Lorg/telegram/khalkhaloka/OtherTools$7;

    iget-object v1, v1, Lorg/telegram/khalkhaloka/OtherTools$7;->this$0:Lorg/telegram/khalkhaloka/OtherTools;

    const-class v2, Lorg/telegram/buy/Buy;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lorg/telegram/khalkhaloka/OtherTools$7$1;->this$1:Lorg/telegram/khalkhaloka/OtherTools$7;

    iget-object v1, v1, Lorg/telegram/khalkhaloka/OtherTools$7;->this$0:Lorg/telegram/khalkhaloka/OtherTools;

    invoke-virtual {v1, v0}, Lorg/telegram/khalkhaloka/OtherTools;->startActivity(Landroid/content/Intent;)V

    iget-object v1, p0, Lorg/telegram/khalkhaloka/OtherTools$7$1;->val$dialog_co_alert:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method