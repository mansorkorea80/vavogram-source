.class Lnet/hockeyapp/android/tasks/CheckUpdateTaskWithUI$2;
.super Ljava/lang/Object;
.source "CheckUpdateTaskWithUI.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/hockeyapp/android/tasks/CheckUpdateTaskWithUI;->showDialog(Lorg/json/JSONArray;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/hockeyapp/android/tasks/CheckUpdateTaskWithUI;

.field final synthetic val$updateInfo:Lorg/json/JSONArray;


# direct methods
.method constructor <init>(Lnet/hockeyapp/android/tasks/CheckUpdateTaskWithUI;Lorg/json/JSONArray;)V
    .locals 0

    iput-object p1, p0, Lnet/hockeyapp/android/tasks/CheckUpdateTaskWithUI$2;->this$0:Lnet/hockeyapp/android/tasks/CheckUpdateTaskWithUI;

    iput-object p2, p0, Lnet/hockeyapp/android/tasks/CheckUpdateTaskWithUI$2;->val$updateInfo:Lorg/json/JSONArray;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    iget-object v1, p0, Lnet/hockeyapp/android/tasks/CheckUpdateTaskWithUI$2;->this$0:Lnet/hockeyapp/android/tasks/CheckUpdateTaskWithUI;

    invoke-virtual {v1}, Lnet/hockeyapp/android/tasks/CheckUpdateTaskWithUI;->getCachingEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lnet/hockeyapp/android/tasks/CheckUpdateTaskWithUI$2;->this$0:Lnet/hockeyapp/android/tasks/CheckUpdateTaskWithUI;

    #getter for: Lnet/hockeyapp/android/tasks/CheckUpdateTaskWithUI;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lnet/hockeyapp/android/tasks/CheckUpdateTaskWithUI;->access$000(Lnet/hockeyapp/android/tasks/CheckUpdateTaskWithUI;)Landroid/app/Activity;

    move-result-object v1

    const-string/jumbo v2, "[]"

    invoke-static {v1, v2}, Lnet/hockeyapp/android/utils/VersionCache;->setVersionInfo(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    iget-object v1, p0, Lnet/hockeyapp/android/tasks/CheckUpdateTaskWithUI$2;->this$0:Lnet/hockeyapp/android/tasks/CheckUpdateTaskWithUI;

    #getter for: Lnet/hockeyapp/android/tasks/CheckUpdateTaskWithUI;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lnet/hockeyapp/android/tasks/CheckUpdateTaskWithUI;->access$000(Lnet/hockeyapp/android/tasks/CheckUpdateTaskWithUI;)Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-static {}, Lnet/hockeyapp/android/utils/Util;->fragmentsSupported()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {v0}, Lnet/hockeyapp/android/utils/Util;->runsOnTablet(Ljava/lang/ref/WeakReference;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lnet/hockeyapp/android/tasks/CheckUpdateTaskWithUI$2;->this$0:Lnet/hockeyapp/android/tasks/CheckUpdateTaskWithUI;

    iget-object v2, p0, Lnet/hockeyapp/android/tasks/CheckUpdateTaskWithUI$2;->val$updateInfo:Lorg/json/JSONArray;

    #calls: Lnet/hockeyapp/android/tasks/CheckUpdateTaskWithUI;->showUpdateFragment(Lorg/json/JSONArray;)V
    invoke-static {v1, v2}, Lnet/hockeyapp/android/tasks/CheckUpdateTaskWithUI;->access$100(Lnet/hockeyapp/android/tasks/CheckUpdateTaskWithUI;Lorg/json/JSONArray;)V

    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lnet/hockeyapp/android/tasks/CheckUpdateTaskWithUI$2;->this$0:Lnet/hockeyapp/android/tasks/CheckUpdateTaskWithUI;

    iget-object v2, p0, Lnet/hockeyapp/android/tasks/CheckUpdateTaskWithUI$2;->val$updateInfo:Lorg/json/JSONArray;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    #calls: Lnet/hockeyapp/android/tasks/CheckUpdateTaskWithUI;->startUpdateIntent(Lorg/json/JSONArray;Ljava/lang/Boolean;)V
    invoke-static {v1, v2, v3}, Lnet/hockeyapp/android/tasks/CheckUpdateTaskWithUI;->access$200(Lnet/hockeyapp/android/tasks/CheckUpdateTaskWithUI;Lorg/json/JSONArray;Ljava/lang/Boolean;)V

    goto :goto_0
.end method
