.class Lorg/telegram/messenger/support/widget/LinearLayoutManager$AnchorInfo;
.super Ljava/lang/Object;
.source "LinearLayoutManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/support/widget/LinearLayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AnchorInfo"
.end annotation


# instance fields
.field mCoordinate:I

.field mLayoutFromEnd:Z

.field mPosition:I

.field final synthetic this$0:Lorg/telegram/messenger/support/widget/LinearLayoutManager;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/support/widget/LinearLayoutManager;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager$AnchorInfo;->this$0:Lorg/telegram/messenger/support/widget/LinearLayoutManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/messenger/support/widget/LinearLayoutManager$AnchorInfo;Landroid/view/View;Lorg/telegram/messenger/support/widget/RecyclerView$State;)Z
    .locals 1

    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/support/widget/LinearLayoutManager$AnchorInfo;->isViewValidAsAnchor(Landroid/view/View;Lorg/telegram/messenger/support/widget/RecyclerView$State;)Z

    move-result v0

    return v0
.end method

.method private isViewValidAsAnchor(Landroid/view/View;Lorg/telegram/messenger/support/widget/RecyclerView$State;)Z
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;

    invoke-virtual {v0}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;->isItemRemoved()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;->getViewLayoutPosition()I

    move-result v1

    if-ltz v1, :cond_0

    invoke-virtual {v0}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;->getViewLayoutPosition()I

    move-result v1

    invoke-virtual {p2}, Lorg/telegram/messenger/support/widget/RecyclerView$State;->getItemCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method assignCoordinateFromPadding()V
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager$AnchorInfo;->this$0:Lorg/telegram/messenger/support/widget/LinearLayoutManager;

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mOrientationHelper:Lorg/telegram/messenger/support/widget/OrientationHelper;

    invoke-virtual {v0}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v0

    :goto_0
    iput v0, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager$AnchorInfo;->mCoordinate:I

    return-void

    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager$AnchorInfo;->this$0:Lorg/telegram/messenger/support/widget/LinearLayoutManager;

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mOrientationHelper:Lorg/telegram/messenger/support/widget/OrientationHelper;

    invoke-virtual {v0}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v0

    goto :goto_0
.end method

.method public assignFromView(Landroid/view/View;)V
    .locals 2

    iget-boolean v0, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager$AnchorInfo;->this$0:Lorg/telegram/messenger/support/widget/LinearLayoutManager;

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mOrientationHelper:Lorg/telegram/messenger/support/widget/OrientationHelper;

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v0

    iget-object v1, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager$AnchorInfo;->this$0:Lorg/telegram/messenger/support/widget/LinearLayoutManager;

    iget-object v1, v1, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mOrientationHelper:Lorg/telegram/messenger/support/widget/OrientationHelper;

    invoke-virtual {v1}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getTotalSpaceChange()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager$AnchorInfo;->mCoordinate:I

    :goto_0
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager$AnchorInfo;->this$0:Lorg/telegram/messenger/support/widget/LinearLayoutManager;

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v0

    iput v0, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager$AnchorInfo;->mPosition:I

    return-void

    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager$AnchorInfo;->this$0:Lorg/telegram/messenger/support/widget/LinearLayoutManager;

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mOrientationHelper:Lorg/telegram/messenger/support/widget/OrientationHelper;

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v0

    iput v0, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager$AnchorInfo;->mCoordinate:I

    goto :goto_0
.end method

.method public assignFromViewAndKeepVisibleRect(Landroid/view/View;)V
    .locals 19

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/LinearLayoutManager$AnchorInfo;->this$0:Lorg/telegram/messenger/support/widget/LinearLayoutManager;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mOrientationHelper:Lorg/telegram/messenger/support/widget/OrientationHelper;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getTotalSpaceChange()I

    move-result v14

    if-ltz v14, :cond_1

    invoke-virtual/range {p0 .. p1}, Lorg/telegram/messenger/support/widget/LinearLayoutManager$AnchorInfo;->assignFromView(Landroid/view/View;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/LinearLayoutManager$AnchorInfo;->this$0:Lorg/telegram/messenger/support/widget/LinearLayoutManager;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/messenger/support/widget/LinearLayoutManager$AnchorInfo;->mPosition:I

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/telegram/messenger/support/widget/LinearLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    move/from16 v17, v0

    if-eqz v17, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/LinearLayoutManager$AnchorInfo;->this$0:Lorg/telegram/messenger/support/widget/LinearLayoutManager;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mOrientationHelper:Lorg/telegram/messenger/support/widget/OrientationHelper;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v17

    sub-int v10, v17, v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/LinearLayoutManager$AnchorInfo;->this$0:Lorg/telegram/messenger/support/widget/LinearLayoutManager;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mOrientationHelper:Lorg/telegram/messenger/support/widget/OrientationHelper;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v2

    sub-int v11, v10, v2

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/LinearLayoutManager$AnchorInfo;->this$0:Lorg/telegram/messenger/support/widget/LinearLayoutManager;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mOrientationHelper:Lorg/telegram/messenger/support/widget/OrientationHelper;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v17

    sub-int v17, v17, v11

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/messenger/support/widget/LinearLayoutManager$AnchorInfo;->mCoordinate:I

    if-lez v11, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/LinearLayoutManager$AnchorInfo;->this$0:Lorg/telegram/messenger/support/widget/LinearLayoutManager;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mOrientationHelper:Lorg/telegram/messenger/support/widget/OrientationHelper;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v3

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/messenger/support/widget/LinearLayoutManager$AnchorInfo;->mCoordinate:I

    move/from16 v17, v0

    sub-int v7, v17, v3

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/LinearLayoutManager$AnchorInfo;->this$0:Lorg/telegram/messenger/support/widget/LinearLayoutManager;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mOrientationHelper:Lorg/telegram/messenger/support/widget/OrientationHelper;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v9

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/LinearLayoutManager$AnchorInfo;->this$0:Lorg/telegram/messenger/support/widget/LinearLayoutManager;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mOrientationHelper:Lorg/telegram/messenger/support/widget/OrientationHelper;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v17

    sub-int v13, v17, v9

    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-static {v13, v0}, Ljava/lang/Math;->min(II)I

    move-result v17

    add-int v16, v9, v17

    sub-int v15, v7, v16

    if-gez v15, :cond_0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/messenger/support/widget/LinearLayoutManager$AnchorInfo;->mCoordinate:I

    move/from16 v17, v0

    neg-int v0, v15

    move/from16 v18, v0

    move/from16 v0, v18

    invoke-static {v11, v0}, Ljava/lang/Math;->min(II)I

    move-result v18

    add-int v17, v17, v18

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/messenger/support/widget/LinearLayoutManager$AnchorInfo;->mCoordinate:I

    goto/16 :goto_0

    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/LinearLayoutManager$AnchorInfo;->this$0:Lorg/telegram/messenger/support/widget/LinearLayoutManager;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mOrientationHelper:Lorg/telegram/messenger/support/widget/OrientationHelper;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/LinearLayoutManager$AnchorInfo;->this$0:Lorg/telegram/messenger/support/widget/LinearLayoutManager;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mOrientationHelper:Lorg/telegram/messenger/support/widget/OrientationHelper;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v17

    sub-int v15, v4, v17

    move-object/from16 v0, p0

    iput v4, v0, Lorg/telegram/messenger/support/widget/LinearLayoutManager$AnchorInfo;->mCoordinate:I

    if-lez v15, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/LinearLayoutManager$AnchorInfo;->this$0:Lorg/telegram/messenger/support/widget/LinearLayoutManager;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mOrientationHelper:Lorg/telegram/messenger/support/widget/OrientationHelper;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v17

    add-int v8, v4, v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/LinearLayoutManager$AnchorInfo;->this$0:Lorg/telegram/messenger/support/widget/LinearLayoutManager;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mOrientationHelper:Lorg/telegram/messenger/support/widget/OrientationHelper;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v17

    sub-int v12, v17, v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/LinearLayoutManager$AnchorInfo;->this$0:Lorg/telegram/messenger/support/widget/LinearLayoutManager;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mOrientationHelper:Lorg/telegram/messenger/support/widget/OrientationHelper;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v17

    sub-int v11, v12, v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/LinearLayoutManager$AnchorInfo;->this$0:Lorg/telegram/messenger/support/widget/LinearLayoutManager;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mOrientationHelper:Lorg/telegram/messenger/support/widget/OrientationHelper;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v17

    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-static {v0, v11}, Ljava/lang/Math;->min(II)I

    move-result v18

    sub-int v6, v17, v18

    sub-int v5, v6, v8

    if-gez v5, :cond_0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/messenger/support/widget/LinearLayoutManager$AnchorInfo;->mCoordinate:I

    move/from16 v17, v0

    neg-int v0, v5

    move/from16 v18, v0

    move/from16 v0, v18

    invoke-static {v15, v0}, Ljava/lang/Math;->min(II)I

    move-result v18

    sub-int v17, v17, v18

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/messenger/support/widget/LinearLayoutManager$AnchorInfo;->mCoordinate:I

    goto/16 :goto_0
.end method

.method reset()V
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager$AnchorInfo;->mPosition:I

    const/high16 v0, -0x8000

    iput v0, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager$AnchorInfo;->mCoordinate:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "AnchorInfo{mPosition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager$AnchorInfo;->mPosition:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mCoordinate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager$AnchorInfo;->mCoordinate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mLayoutFromEnd="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
