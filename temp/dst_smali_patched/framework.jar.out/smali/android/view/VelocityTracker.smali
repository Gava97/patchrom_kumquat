.class public final Landroid/view/VelocityTracker;
.super Ljava/lang/Object;
.source "VelocityTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/VelocityTracker$Estimator;
    }
.end annotation


# static fields
.field private static final ACTIVE_POINTER_ID:I = -0x1

.field private static final sPool:Landroid/util/Pools$SynchronizedPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pools$SynchronizedPool",
            "<",
            "Landroid/view/VelocityTracker;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mPtr:I

.field private final mStrategy:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    new-instance v0, Landroid/util/Pools$SynchronizedPool;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/util/Pools$SynchronizedPool;-><init>(I)V

    sput-object v0, Landroid/view/VelocityTracker;->sPool:Landroid/util/Pools$SynchronizedPool;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "strategy"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Landroid/view/VelocityTracker;->nativeInitialize(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/view/VelocityTracker;->mPtr:I

    iput-object p1, p0, Landroid/view/VelocityTracker;->mStrategy:Ljava/lang/String;

    return-void
.end method

.method private static native nativeAddMovement(ILandroid/view/MotionEvent;)V
.end method

.method private static native nativeClear(I)V
.end method

.method private static native nativeComputeCurrentVelocity(IIF)V
.end method

.method private static native nativeDispose(I)V
.end method

.method private static native nativeGetEstimator(IILandroid/view/VelocityTracker$Estimator;)Z
.end method

.method private static native nativeGetXVelocity(II)F
.end method

.method private static native nativeGetYVelocity(II)F
.end method

.method private static native nativeInitialize(Ljava/lang/String;)I
.end method

.method public static obtain()Landroid/view/VelocityTracker;
    .locals 2

    .prologue
    sget-object v1, Landroid/view/VelocityTracker;->sPool:Landroid/util/Pools$SynchronizedPool;

    invoke-virtual {v1}, Landroid/util/Pools$SynchronizedPool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/VelocityTracker;

    .local v0, instance:Landroid/view/VelocityTracker;
    if-eqz v0, :cond_0

    .end local v0           #instance:Landroid/view/VelocityTracker;
    :goto_0
    return-object v0

    .restart local v0       #instance:Landroid/view/VelocityTracker;
    :cond_0
    new-instance v0, Landroid/view/VelocityTracker;

    .end local v0           #instance:Landroid/view/VelocityTracker;
    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/view/VelocityTracker;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static obtain(Ljava/lang/String;)Landroid/view/VelocityTracker;
    .locals 1
    .parameter "strategy"

    .prologue
    if-nez p0, :cond_0

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/view/VelocityTracker;

    invoke-direct {v0, p0}, Landroid/view/VelocityTracker;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public addMovement(Landroid/view/MotionEvent;)V
    .locals 2
    .parameter "event"

    .prologue
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "event must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget v0, p0, Landroid/view/VelocityTracker;->mPtr:I

    invoke-static {v0, p1}, Landroid/view/VelocityTracker;->nativeAddMovement(ILandroid/view/MotionEvent;)V

    return-void
.end method

.method public clear()V
    .locals 1

    .prologue
    iget v0, p0, Landroid/view/VelocityTracker;->mPtr:I

    invoke-static {v0}, Landroid/view/VelocityTracker;->nativeClear(I)V

    return-void
.end method

.method public computeCurrentVelocity(I)V
    .locals 2
    .parameter "units"

    .prologue
    iget v0, p0, Landroid/view/VelocityTracker;->mPtr:I

    const v1, 0x7f7fffff

    invoke-static {v0, p1, v1}, Landroid/view/VelocityTracker;->nativeComputeCurrentVelocity(IIF)V

    return-void
.end method

.method public computeCurrentVelocity(IF)V
    .locals 1
    .parameter "units"
    .parameter "maxVelocity"

    .prologue
    iget v0, p0, Landroid/view/VelocityTracker;->mPtr:I

    invoke-static {v0, p1, p2}, Landroid/view/VelocityTracker;->nativeComputeCurrentVelocity(IIF)V

    return-void
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    :try_start_0
    iget v0, p0, Landroid/view/VelocityTracker;->mPtr:I

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/view/VelocityTracker;->mPtr:I

    invoke-static {v0}, Landroid/view/VelocityTracker;->nativeDispose(I)V

    const/4 v0, 0x0

    iput v0, p0, Landroid/view/VelocityTracker;->mPtr:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getEstimator(ILandroid/view/VelocityTracker$Estimator;)Z
    .locals 2
    .parameter "id"
    .parameter "outEstimator"

    .prologue
    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "outEstimator must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget v0, p0, Landroid/view/VelocityTracker;->mPtr:I

    invoke-static {v0, p1, p2}, Landroid/view/VelocityTracker;->nativeGetEstimator(IILandroid/view/VelocityTracker$Estimator;)Z

    move-result v0

    return v0
.end method

.method public getXVelocity()F
    .locals 2

    .prologue
    iget v0, p0, Landroid/view/VelocityTracker;->mPtr:I

    const/4 v1, -0x1

    invoke-static {v0, v1}, Landroid/view/VelocityTracker;->nativeGetXVelocity(II)F

    move-result v0

    return v0
.end method

.method public getXVelocity(I)F
    .locals 1
    .parameter "id"

    .prologue
    iget v0, p0, Landroid/view/VelocityTracker;->mPtr:I

    invoke-static {v0, p1}, Landroid/view/VelocityTracker;->nativeGetXVelocity(II)F

    move-result v0

    return v0
.end method

.method public getYVelocity()F
    .locals 2

    .prologue
    iget v0, p0, Landroid/view/VelocityTracker;->mPtr:I

    const/4 v1, -0x1

    invoke-static {v0, v1}, Landroid/view/VelocityTracker;->nativeGetYVelocity(II)F

    move-result v0

    return v0
.end method

.method public getYVelocity(I)F
    .locals 1
    .parameter "id"

    .prologue
    iget v0, p0, Landroid/view/VelocityTracker;->mPtr:I

    invoke-static {v0, p1}, Landroid/view/VelocityTracker;->nativeGetYVelocity(II)F

    move-result v0

    return v0
.end method

.method public recycle()V
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/view/VelocityTracker;->mStrategy:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/view/VelocityTracker;->clear()V

    sget-object v0, Landroid/view/VelocityTracker;->sPool:Landroid/util/Pools$SynchronizedPool;

    invoke-virtual {v0, p0}, Landroid/util/Pools$SynchronizedPool;->release(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method
