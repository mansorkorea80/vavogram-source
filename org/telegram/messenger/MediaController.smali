.class public Lorg/telegram/messenger/MediaController;
.super Ljava/lang/Object;
.source "MediaController.java"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/MediaController$VideoConvertRunnable;,
        Lorg/telegram/messenger/MediaController$StopMediaObserverRunnable;,
        Lorg/telegram/messenger/MediaController$GalleryObserverExternal;,
        Lorg/telegram/messenger/MediaController$GalleryObserverInternal;,
        Lorg/telegram/messenger/MediaController$ExternalObserver;,
        Lorg/telegram/messenger/MediaController$InternalObserver;,
        Lorg/telegram/messenger/MediaController$SearchImage;,
        Lorg/telegram/messenger/MediaController$PhotoEntry;,
        Lorg/telegram/messenger/MediaController$AlbumEntry;,
        Lorg/telegram/messenger/MediaController$AudioEntry;,
        Lorg/telegram/messenger/MediaController$AudioBuffer;,
        Lorg/telegram/messenger/MediaController$FileDownloadProgressListener;
    }
.end annotation


# static fields
.field private static final AUDIO_FOCUSED:I = 0x2

.field private static final AUDIO_NO_FOCUS_CAN_DUCK:I = 0x1

.field private static final AUDIO_NO_FOCUS_NO_DUCK:I = 0x0

.field public static final AUTODOWNLOAD_MASK_AUDIO:I = 0x2

.field public static final AUTODOWNLOAD_MASK_DOCUMENT:I = 0x8

.field public static final AUTODOWNLOAD_MASK_GIF:I = 0x20

.field public static final AUTODOWNLOAD_MASK_MUSIC:I = 0x10

.field public static final AUTODOWNLOAD_MASK_PHOTO:I = 0x1

.field public static final AUTODOWNLOAD_MASK_VIDEO:I = 0x4

.field private static volatile Instance:Lorg/telegram/messenger/MediaController; = null

.field public static final MIME_TYPE:Ljava/lang/String; = "video/avc"

.field private static final PROCESSOR_TYPE_INTEL:I = 0x2

.field private static final PROCESSOR_TYPE_MTK:I = 0x3

.field private static final PROCESSOR_TYPE_OTHER:I = 0x0

.field private static final PROCESSOR_TYPE_QCOM:I = 0x1

.field private static final PROCESSOR_TYPE_SEC:I = 0x4

.field private static final PROCESSOR_TYPE_TI:I = 0x5

.field private static final VOLUME_DUCK:F = 0.2f

.field private static final VOLUME_NORMAL:F = 1.0f

.field public static allPhotosAlbumEntry:Lorg/telegram/messenger/MediaController$AlbumEntry;

.field private static broadcastPhotosRunnable:Ljava/lang/Runnable;

.field private static final projectionPhotos:[Ljava/lang/String;

.field private static final projectionVideo:[Ljava/lang/String;

.field public static readArgs:[I


# instance fields
.field private accelerometerSensor:Landroid/hardware/Sensor;

.field private accelerometerVertical:Z

.field private addLaterArray:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lorg/telegram/messenger/MediaController$FileDownloadProgressListener;",
            ">;"
        }
    .end annotation
.end field

.field private allowStartRecord:Z

.field private audioDownloadQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/DownloadObject;",
            ">;"
        }
    .end annotation
.end field

.field private audioFocus:I

.field private audioInfo:Lorg/telegram/messenger/audioinfo/AudioInfo;

.field private audioPlayer:Landroid/media/MediaPlayer;

.field private audioRecorder:Landroid/media/AudioRecord;

.field private audioTrackPlayer:Landroid/media/AudioTrack;

.field private autoplayGifs:Z

.field private buffersWrited:I

.field private callInProgress:Z

.field private cancelCurrentVideoConversion:Z

.field private countLess:I

.field private currentPlaylistNum:I

.field private currentTotalPcmDuration:J

.field private customTabs:Z

.field private decodingFinished:Z

.field private deleteLaterArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/MediaController$FileDownloadProgressListener;",
            ">;"
        }
    .end annotation
.end field

.field private directShare:Z

.field private documentDownloadQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/DownloadObject;",
            ">;"
        }
    .end annotation
.end field

.field private downloadQueueKeys:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lorg/telegram/messenger/DownloadObject;",
            ">;"
        }
    .end annotation
.end field

.field private downloadingCurrentMessage:Z

.field private externalObserver:Lorg/telegram/messenger/MediaController$ExternalObserver;

.field private fileBuffer:Ljava/nio/ByteBuffer;

.field private fileDecodingQueue:Lorg/telegram/messenger/DispatchQueue;

.field private fileEncodingQueue:Lorg/telegram/messenger/DispatchQueue;

.field private forceLoopCurrentPlaylist:Z

.field private freePlayerBuffers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/MediaController$AudioBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private generatingWaveform:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lorg/telegram/messenger/MessageObject;",
            ">;"
        }
    .end annotation
.end field

.field private gifDownloadQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/DownloadObject;",
            ">;"
        }
    .end annotation
.end field

.field private gravity:[F

.field private gravityFast:[F

.field private gravitySensor:Landroid/hardware/Sensor;

.field private hasAudioFocus:I

.field private ignoreFirstProgress:I

.field private ignoreOnPause:Z

.field private ignoreProximity:Z

.field private inputFieldHasText:Z

.field private internalObserver:Lorg/telegram/messenger/MediaController$InternalObserver;

.field private isPaused:Z

.field private lastCheckMask:I

.field private lastMediaCheckTime:J

.field private lastPlayPcm:J

.field private lastProgress:I

.field private lastProximityValue:F

.field private lastSecretChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

.field private lastSecretChatEnterTime:J

.field private lastSecretChatLeaveTime:J

.field private lastSecretChatVisibleMessages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private lastTag:I

.field private lastTimestamp:J

.field private linearAcceleration:[F

.field private linearSensor:Landroid/hardware/Sensor;

.field private listenerInProgress:Z

.field private loadingFileMessagesObservers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/MessageObject;",
            ">;>;"
        }
    .end annotation
.end field

.field private loadingFileObservers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lorg/telegram/messenger/MediaController$FileDownloadProgressListener;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private mediaProjections:[Ljava/lang/String;

.field public mobileDataDownloadMask:I

.field private musicDownloadQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/DownloadObject;",
            ">;"
        }
    .end annotation
.end field

.field private observersByTag:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private photoDownloadQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/DownloadObject;",
            ">;"
        }
    .end annotation
.end field

.field private playMusicAgain:Z

.field private playerBufferSize:I

.field private final playerObjectSync:Ljava/lang/Object;

.field private playerQueue:Lorg/telegram/messenger/DispatchQueue;

.field private final playerSync:Ljava/lang/Object;

.field private playingMessageObject:Lorg/telegram/messenger/MessageObject;

.field private playlist:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/MessageObject;",
            ">;"
        }
    .end annotation
.end field

.field private previousAccValue:F

.field private progressTimer:Ljava/util/Timer;

.field private final progressTimerSync:Ljava/lang/Object;

.field private proximityHasDifferentValues:Z

.field private proximitySensor:Landroid/hardware/Sensor;

.field private proximityTouched:Z

.field private proximityWakeLock:Landroid/os/PowerManager$WakeLock;

.field private raiseChat:Lorg/telegram/ui/ChatActivity;

.field private raiseToEarRecord:Z

.field private raiseToSpeak:Z

.field private raisedToBack:I

.field private raisedToTop:I

.field private recordBufferSize:I

.field private recordBuffers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private recordDialogId:J

.field private recordQueue:Lorg/telegram/messenger/DispatchQueue;

.field private recordReplyingMessageObject:Lorg/telegram/messenger/MessageObject;

.field private recordRunnable:Ljava/lang/Runnable;

.field private recordSamples:[S

.field private recordStartRunnable:Ljava/lang/Runnable;

.field private recordStartTime:J

.field private recordTimeCount:J

.field private recordingAudio:Lorg/telegram/tgnet/TLRPC$TL_document;

.field private recordingAudioFile:Ljava/io/File;

.field private refreshGalleryRunnable:Ljava/lang/Runnable;

.field private repeatMode:I

.field private resumeAudioOnFocusGain:Z

.field public roamingDownloadMask:I

.field private samplesCount:J

.field private saveToGallery:Z

.field private sendAfterDone:I

.field private sensorManager:Landroid/hardware/SensorManager;

.field private sensorsStarted:Z

.field private shuffleMusic:Z

.field private shuffledPlaylist:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/MessageObject;",
            ">;"
        }
    .end annotation
.end field

.field private startObserverToken:I

.field private stopMediaObserverRunnable:Lorg/telegram/messenger/MediaController$StopMediaObserverRunnable;

.field private final sync:Ljava/lang/Object;

.field private timeSinceRaise:J

.field private typingTimes:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private useFrontSpeaker:Z

.field private usedPlayerBuffers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/MediaController$AudioBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private videoConvertFirstWrite:Z

.field private videoConvertQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/MessageObject;",
            ">;"
        }
    .end annotation
.end field

.field private final videoConvertSync:Ljava/lang/Object;

.field private videoDownloadQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/DownloadObject;",
            ">;"
        }
    .end annotation
.end field

.field private final videoQueueSync:Ljava/lang/Object;

.field private voiceMessagesPlaylist:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/MessageObject;",
            ">;"
        }
    .end annotation
.end field

.field private voiceMessagesPlaylistMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lorg/telegram/messenger/MessageObject;",
            ">;"
        }
    .end annotation
.end field

.field private voiceMessagesPlaylistUnread:Z

.field public wifiDownloadMask:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x3

    new-array v0, v3, [I

    sput-object v0, Lorg/telegram/messenger/MediaController;->readArgs:[I

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "_id"

    aput-object v1, v0, v4

    const-string/jumbo v1, "bucket_id"

    aput-object v1, v0, v5

    const-string/jumbo v1, "bucket_display_name"

    aput-object v1, v0, v6

    const-string/jumbo v1, "_data"

    aput-object v1, v0, v3

    const-string/jumbo v1, "datetaken"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string/jumbo v2, "orientation"

    aput-object v2, v0, v1

    sput-object v0, Lorg/telegram/messenger/MediaController;->projectionPhotos:[Ljava/lang/String;

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "_id"

    aput-object v1, v0, v4

    const-string/jumbo v1, "bucket_id"

    aput-object v1, v0, v5

    const-string/jumbo v1, "bucket_display_name"

    aput-object v1, v0, v6

    const-string/jumbo v1, "_data"

    aput-object v1, v0, v3

    const-string/jumbo v1, "datetaken"

    aput-object v1, v0, v7

    sput-object v0, Lorg/telegram/messenger/MediaController;->projectionVideo:[Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lorg/telegram/messenger/MediaController;->Instance:Lorg/telegram/messenger/MediaController;

    return-void
.end method

.method public constructor <init>()V
    .locals 13

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v9, Ljava/lang/Object;

    invoke-direct {v9}, Ljava/lang/Object;-><init>()V

    iput-object v9, p0, Lorg/telegram/messenger/MediaController;->videoConvertSync:Ljava/lang/Object;

    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    iput-object v9, p0, Lorg/telegram/messenger/MediaController;->typingTimes:Ljava/util/HashMap;

    const-wide/16 v10, 0x0

    iput-wide v10, p0, Lorg/telegram/messenger/MediaController;->lastTimestamp:J

    const/high16 v9, -0x3d38

    iput v9, p0, Lorg/telegram/messenger/MediaController;->lastProximityValue:F

    const/4 v9, 0x3

    new-array v9, v9, [F

    iput-object v9, p0, Lorg/telegram/messenger/MediaController;->gravity:[F

    const/4 v9, 0x3

    new-array v9, v9, [F

    iput-object v9, p0, Lorg/telegram/messenger/MediaController;->gravityFast:[F

    const/4 v9, 0x3

    new-array v9, v9, [F

    iput-object v9, p0, Lorg/telegram/messenger/MediaController;->linearAcceleration:[F

    const/4 v9, 0x0

    iput v9, p0, Lorg/telegram/messenger/MediaController;->audioFocus:I

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, p0, Lorg/telegram/messenger/MediaController;->videoConvertQueue:Ljava/util/ArrayList;

    new-instance v9, Ljava/lang/Object;

    invoke-direct {v9}, Ljava/lang/Object;-><init>()V

    iput-object v9, p0, Lorg/telegram/messenger/MediaController;->videoQueueSync:Ljava/lang/Object;

    const/4 v9, 0x0

    iput-boolean v9, p0, Lorg/telegram/messenger/MediaController;->cancelCurrentVideoConversion:Z

    const/4 v9, 0x1

    iput-boolean v9, p0, Lorg/telegram/messenger/MediaController;->videoConvertFirstWrite:Z

    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    iput-object v9, p0, Lorg/telegram/messenger/MediaController;->generatingWaveform:Ljava/util/HashMap;

    const/4 v9, 0x0

    iput v9, p0, Lorg/telegram/messenger/MediaController;->mobileDataDownloadMask:I

    const/4 v9, 0x0

    iput v9, p0, Lorg/telegram/messenger/MediaController;->wifiDownloadMask:I

    const/4 v9, 0x0

    iput v9, p0, Lorg/telegram/messenger/MediaController;->roamingDownloadMask:I

    const/4 v9, 0x0

    iput v9, p0, Lorg/telegram/messenger/MediaController;->lastCheckMask:I

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, p0, Lorg/telegram/messenger/MediaController;->photoDownloadQueue:Ljava/util/ArrayList;

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, p0, Lorg/telegram/messenger/MediaController;->audioDownloadQueue:Ljava/util/ArrayList;

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, p0, Lorg/telegram/messenger/MediaController;->documentDownloadQueue:Ljava/util/ArrayList;

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, p0, Lorg/telegram/messenger/MediaController;->musicDownloadQueue:Ljava/util/ArrayList;

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, p0, Lorg/telegram/messenger/MediaController;->gifDownloadQueue:Ljava/util/ArrayList;

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, p0, Lorg/telegram/messenger/MediaController;->videoDownloadQueue:Ljava/util/ArrayList;

    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    iput-object v9, p0, Lorg/telegram/messenger/MediaController;->downloadQueueKeys:Ljava/util/HashMap;

    const/4 v9, 0x1

    iput-boolean v9, p0, Lorg/telegram/messenger/MediaController;->saveToGallery:Z

    const/4 v9, 0x1

    iput-boolean v9, p0, Lorg/telegram/messenger/MediaController;->autoplayGifs:Z

    const/4 v9, 0x1

    iput-boolean v9, p0, Lorg/telegram/messenger/MediaController;->raiseToSpeak:Z

    const/4 v9, 0x1

    iput-boolean v9, p0, Lorg/telegram/messenger/MediaController;->customTabs:Z

    const/4 v9, 0x1

    iput-boolean v9, p0, Lorg/telegram/messenger/MediaController;->directShare:Z

    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    iput-object v9, p0, Lorg/telegram/messenger/MediaController;->loadingFileObservers:Ljava/util/HashMap;

    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    iput-object v9, p0, Lorg/telegram/messenger/MediaController;->loadingFileMessagesObservers:Ljava/util/HashMap;

    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    iput-object v9, p0, Lorg/telegram/messenger/MediaController;->observersByTag:Ljava/util/HashMap;

    const/4 v9, 0x0

    iput-boolean v9, p0, Lorg/telegram/messenger/MediaController;->listenerInProgress:Z

    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    iput-object v9, p0, Lorg/telegram/messenger/MediaController;->addLaterArray:Ljava/util/HashMap;

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, p0, Lorg/telegram/messenger/MediaController;->deleteLaterArray:Ljava/util/ArrayList;

    const/4 v9, 0x0

    iput v9, p0, Lorg/telegram/messenger/MediaController;->lastTag:I

    const/4 v9, 0x0

    iput-boolean v9, p0, Lorg/telegram/messenger/MediaController;->isPaused:Z

    const/4 v9, 0x0

    iput-object v9, p0, Lorg/telegram/messenger/MediaController;->audioPlayer:Landroid/media/MediaPlayer;

    const/4 v9, 0x0

    iput-object v9, p0, Lorg/telegram/messenger/MediaController;->audioTrackPlayer:Landroid/media/AudioTrack;

    const/4 v9, 0x0

    iput v9, p0, Lorg/telegram/messenger/MediaController;->lastProgress:I

    const/4 v9, 0x0

    iput v9, p0, Lorg/telegram/messenger/MediaController;->playerBufferSize:I

    const/4 v9, 0x0

    iput-boolean v9, p0, Lorg/telegram/messenger/MediaController;->decodingFinished:Z

    const/4 v9, 0x0

    iput v9, p0, Lorg/telegram/messenger/MediaController;->ignoreFirstProgress:I

    const/4 v9, 0x0

    iput-object v9, p0, Lorg/telegram/messenger/MediaController;->progressTimer:Ljava/util/Timer;

    new-instance v9, Ljava/lang/Object;

    invoke-direct {v9}, Ljava/lang/Object;-><init>()V

    iput-object v9, p0, Lorg/telegram/messenger/MediaController;->progressTimerSync:Ljava/lang/Object;

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, p0, Lorg/telegram/messenger/MediaController;->playlist:Ljava/util/ArrayList;

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, p0, Lorg/telegram/messenger/MediaController;->shuffledPlaylist:Ljava/util/ArrayList;

    const/4 v9, 0x0

    iput-object v9, p0, Lorg/telegram/messenger/MediaController;->audioRecorder:Landroid/media/AudioRecord;

    const/4 v9, 0x0

    iput-object v9, p0, Lorg/telegram/messenger/MediaController;->recordingAudio:Lorg/telegram/tgnet/TLRPC$TL_document;

    const/4 v9, 0x0

    iput-object v9, p0, Lorg/telegram/messenger/MediaController;->recordingAudioFile:Ljava/io/File;

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, p0, Lorg/telegram/messenger/MediaController;->usedPlayerBuffers:Ljava/util/ArrayList;

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, p0, Lorg/telegram/messenger/MediaController;->freePlayerBuffers:Ljava/util/ArrayList;

    new-instance v9, Ljava/lang/Object;

    invoke-direct {v9}, Ljava/lang/Object;-><init>()V

    iput-object v9, p0, Lorg/telegram/messenger/MediaController;->playerSync:Ljava/lang/Object;

    new-instance v9, Ljava/lang/Object;

    invoke-direct {v9}, Ljava/lang/Object;-><init>()V

    iput-object v9, p0, Lorg/telegram/messenger/MediaController;->playerObjectSync:Ljava/lang/Object;

    const/16 v9, 0x400

    new-array v9, v9, [S

    iput-object v9, p0, Lorg/telegram/messenger/MediaController;->recordSamples:[S

    new-instance v9, Ljava/lang/Object;

    invoke-direct {v9}, Ljava/lang/Object;-><init>()V

    iput-object v9, p0, Lorg/telegram/messenger/MediaController;->sync:Ljava/lang/Object;

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, p0, Lorg/telegram/messenger/MediaController;->recordBuffers:Ljava/util/ArrayList;

    new-instance v9, Lorg/telegram/messenger/MediaController$1;

    invoke-direct {v9, p0}, Lorg/telegram/messenger/MediaController$1;-><init>(Lorg/telegram/messenger/MediaController;)V

    iput-object v9, p0, Lorg/telegram/messenger/MediaController;->recordRunnable:Ljava/lang/Runnable;

    const/4 v9, 0x0

    iput-object v9, p0, Lorg/telegram/messenger/MediaController;->externalObserver:Lorg/telegram/messenger/MediaController$ExternalObserver;

    const/4 v9, 0x0

    iput-object v9, p0, Lorg/telegram/messenger/MediaController;->internalObserver:Lorg/telegram/messenger/MediaController$InternalObserver;

    const-wide/16 v10, 0x0

    iput-wide v10, p0, Lorg/telegram/messenger/MediaController;->lastSecretChatEnterTime:J

    const-wide/16 v10, 0x0

    iput-wide v10, p0, Lorg/telegram/messenger/MediaController;->lastSecretChatLeaveTime:J

    const-wide/16 v10, 0x0

    iput-wide v10, p0, Lorg/telegram/messenger/MediaController;->lastMediaCheckTime:J

    const/4 v9, 0x0

    iput-object v9, p0, Lorg/telegram/messenger/MediaController;->lastSecretChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    const/4 v9, 0x0

    iput-object v9, p0, Lorg/telegram/messenger/MediaController;->lastSecretChatVisibleMessages:Ljava/util/ArrayList;

    const/4 v9, 0x0

    iput v9, p0, Lorg/telegram/messenger/MediaController;->startObserverToken:I

    const/4 v9, 0x0

    iput-object v9, p0, Lorg/telegram/messenger/MediaController;->stopMediaObserverRunnable:Lorg/telegram/messenger/MediaController$StopMediaObserverRunnable;

    const/4 v9, 0x0

    iput-object v9, p0, Lorg/telegram/messenger/MediaController;->mediaProjections:[Ljava/lang/String;

    const/16 v9, 0x3e80

    const/16 v10, 0x10

    const/4 v11, 0x2

    :try_start_0
    invoke-static {v9, v10, v11}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result v9

    iput v9, p0, Lorg/telegram/messenger/MediaController;->recordBufferSize:I

    iget v9, p0, Lorg/telegram/messenger/MediaController;->recordBufferSize:I

    if-gtz v9, :cond_0

    const/16 v9, 0x500

    iput v9, p0, Lorg/telegram/messenger/MediaController;->recordBufferSize:I

    :cond_0
    const v9, 0xbb80

    const/4 v10, 0x4

    const/4 v11, 0x2

    invoke-static {v9, v10, v11}, Landroid/media/AudioTrack;->getMinBufferSize(III)I

    move-result v9

    iput v9, p0, Lorg/telegram/messenger/MediaController;->playerBufferSize:I

    iget v9, p0, Lorg/telegram/messenger/MediaController;->playerBufferSize:I

    if-gtz v9, :cond_1

    const/16 v9, 0xf00

    iput v9, p0, Lorg/telegram/messenger/MediaController;->playerBufferSize:I

    :cond_1
    const/4 v0, 0x0

    :goto_0
    const/4 v9, 0x5

    if-ge v0, v9, :cond_2

    const/16 v9, 0x1000

    invoke-static {v9}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    iget-object v9, p0, Lorg/telegram/messenger/MediaController;->recordBuffers:Ljava/util/ArrayList;

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_1
    const/4 v9, 0x3

    if-ge v0, v9, :cond_3

    iget-object v9, p0, Lorg/telegram/messenger/MediaController;->freePlayerBuffers:Ljava/util/ArrayList;

    new-instance v10, Lorg/telegram/messenger/MediaController$AudioBuffer;

    iget v11, p0, Lorg/telegram/messenger/MediaController;->playerBufferSize:I

    invoke-direct {v10, p0, v11}, Lorg/telegram/messenger/MediaController$AudioBuffer;-><init>(Lorg/telegram/messenger/MediaController;I)V

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :catch_0
    move-exception v2

    const-string/jumbo v9, "tmessages"

    invoke-static {v9, v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_3
    :try_start_1
    sget-object v9, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v10, "sensor"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/hardware/SensorManager;

    iput-object v9, p0, Lorg/telegram/messenger/MediaController;->sensorManager:Landroid/hardware/SensorManager;

    iget-object v9, p0, Lorg/telegram/messenger/MediaController;->sensorManager:Landroid/hardware/SensorManager;

    const/16 v10, 0xa

    invoke-virtual {v9, v10}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v9

    iput-object v9, p0, Lorg/telegram/messenger/MediaController;->linearSensor:Landroid/hardware/Sensor;

    iget-object v9, p0, Lorg/telegram/messenger/MediaController;->sensorManager:Landroid/hardware/SensorManager;

    const/16 v10, 0x9

    invoke-virtual {v9, v10}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v9

    iput-object v9, p0, Lorg/telegram/messenger/MediaController;->gravitySensor:Landroid/hardware/Sensor;

    iget-object v9, p0, Lorg/telegram/messenger/MediaController;->linearSensor:Landroid/hardware/Sensor;

    if-eqz v9, :cond_4

    iget-object v9, p0, Lorg/telegram/messenger/MediaController;->gravitySensor:Landroid/hardware/Sensor;

    if-nez v9, :cond_5

    :cond_4
    const-string/jumbo v9, "tmessages"

    const-string/jumbo v10, "gravity or linear sensor not found"

    invoke-static {v9, v10}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v9, p0, Lorg/telegram/messenger/MediaController;->sensorManager:Landroid/hardware/SensorManager;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v9

    iput-object v9, p0, Lorg/telegram/messenger/MediaController;->accelerometerSensor:Landroid/hardware/Sensor;

    const/4 v9, 0x0

    iput-object v9, p0, Lorg/telegram/messenger/MediaController;->linearSensor:Landroid/hardware/Sensor;

    const/4 v9, 0x0

    iput-object v9, p0, Lorg/telegram/messenger/MediaController;->gravitySensor:Landroid/hardware/Sensor;

    :cond_5
    iget-object v9, p0, Lorg/telegram/messenger/MediaController;->sensorManager:Landroid/hardware/SensorManager;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v9

    iput-object v9, p0, Lorg/telegram/messenger/MediaController;->proximitySensor:Landroid/hardware/Sensor;

    sget-object v9, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v10, "power"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/PowerManager;

    const/16 v9, 0x20

    const-string/jumbo v10, "proximity"

    invoke-virtual {v7, v9, v10}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v9

    iput-object v9, p0, Lorg/telegram/messenger/MediaController;->proximityWakeLock:Landroid/os/PowerManager$WakeLock;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    const/16 v9, 0x780

    invoke-static {v9}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v9

    iput-object v9, p0, Lorg/telegram/messenger/MediaController;->fileBuffer:Ljava/nio/ByteBuffer;

    new-instance v9, Lorg/telegram/messenger/DispatchQueue;

    const-string/jumbo v10, "recordQueue"

    invoke-direct {v9, v10}, Lorg/telegram/messenger/DispatchQueue;-><init>(Ljava/lang/String;)V

    iput-object v9, p0, Lorg/telegram/messenger/MediaController;->recordQueue:Lorg/telegram/messenger/DispatchQueue;

    iget-object v9, p0, Lorg/telegram/messenger/MediaController;->recordQueue:Lorg/telegram/messenger/DispatchQueue;

    const/16 v10, 0xa

    invoke-virtual {v9, v10}, Lorg/telegram/messenger/DispatchQueue;->setPriority(I)V

    new-instance v9, Lorg/telegram/messenger/DispatchQueue;

    const-string/jumbo v10, "fileEncodingQueue"

    invoke-direct {v9, v10}, Lorg/telegram/messenger/DispatchQueue;-><init>(Ljava/lang/String;)V

    iput-object v9, p0, Lorg/telegram/messenger/MediaController;->fileEncodingQueue:Lorg/telegram/messenger/DispatchQueue;

    iget-object v9, p0, Lorg/telegram/messenger/MediaController;->fileEncodingQueue:Lorg/telegram/messenger/DispatchQueue;

    const/16 v10, 0xa

    invoke-virtual {v9, v10}, Lorg/telegram/messenger/DispatchQueue;->setPriority(I)V

    new-instance v9, Lorg/telegram/messenger/DispatchQueue;

    const-string/jumbo v10, "playerQueue"

    invoke-direct {v9, v10}, Lorg/telegram/messenger/DispatchQueue;-><init>(Ljava/lang/String;)V

    iput-object v9, p0, Lorg/telegram/messenger/MediaController;->playerQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v9, Lorg/telegram/messenger/DispatchQueue;

    const-string/jumbo v10, "fileDecodingQueue"

    invoke-direct {v9, v10}, Lorg/telegram/messenger/DispatchQueue;-><init>(Ljava/lang/String;)V

    iput-object v9, p0, Lorg/telegram/messenger/MediaController;->fileDecodingQueue:Lorg/telegram/messenger/DispatchQueue;

    sget-object v9, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v10, "mainconfig"

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v8

    const-string/jumbo v9, "mobileDataDownloadMask"

    const/16 v10, 0x33

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v9

    iput v9, p0, Lorg/telegram/messenger/MediaController;->mobileDataDownloadMask:I

    const-string/jumbo v9, "wifiDownloadMask"

    const/16 v10, 0x33

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v9

    iput v9, p0, Lorg/telegram/messenger/MediaController;->wifiDownloadMask:I

    const-string/jumbo v9, "roamingDownloadMask"

    const/4 v10, 0x0

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v9

    iput v9, p0, Lorg/telegram/messenger/MediaController;->roamingDownloadMask:I

    const-string/jumbo v9, "save_gallery"

    const/4 v10, 0x0

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    iput-boolean v9, p0, Lorg/telegram/messenger/MediaController;->saveToGallery:Z

    const-string/jumbo v9, "autoplay_gif"

    const/4 v10, 0x1

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    iput-boolean v9, p0, Lorg/telegram/messenger/MediaController;->autoplayGifs:Z

    const-string/jumbo v9, "raise_to_speak"

    const/4 v10, 0x1

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    iput-boolean v9, p0, Lorg/telegram/messenger/MediaController;->raiseToSpeak:Z

    const-string/jumbo v9, "custom_tabs"

    const/4 v10, 0x1

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    iput-boolean v9, p0, Lorg/telegram/messenger/MediaController;->customTabs:Z

    const-string/jumbo v9, "direct_share"

    const/4 v10, 0x1

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    iput-boolean v9, p0, Lorg/telegram/messenger/MediaController;->directShare:Z

    const-string/jumbo v9, "shuffleMusic"

    const/4 v10, 0x0

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    iput-boolean v9, p0, Lorg/telegram/messenger/MediaController;->shuffleMusic:Z

    const-string/jumbo v9, "repeatMode"

    const/4 v10, 0x0

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v9

    iput v9, p0, Lorg/telegram/messenger/MediaController;->repeatMode:I

    new-instance v9, Lorg/telegram/messenger/MediaController$2;

    invoke-direct {v9, p0}, Lorg/telegram/messenger/MediaController$2;-><init>(Lorg/telegram/messenger/MediaController;)V

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    new-instance v5, Lorg/telegram/messenger/MediaController$3;

    invoke-direct {v5, p0}, Lorg/telegram/messenger/MediaController$3;-><init>(Lorg/telegram/messenger/MediaController;)V

    new-instance v3, Landroid/content/IntentFilter;

    const-string/jumbo v9, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v3, v9}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    sget-object v9, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v9, v5, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->isClientActivated()Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-virtual {p0}, Lorg/telegram/messenger/MediaController;->checkAutodownloadSettings()V

    :cond_6
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x10

    if-lt v9, v10, :cond_8

    const/4 v9, 0x7

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string/jumbo v11, "_data"

    aput-object v11, v9, v10

    const/4 v10, 0x1

    const-string/jumbo v11, "_display_name"

    aput-object v11, v9, v10

    const/4 v10, 0x2

    const-string/jumbo v11, "bucket_display_name"

    aput-object v11, v9, v10

    const/4 v10, 0x3

    const-string/jumbo v11, "datetaken"

    aput-object v11, v9, v10

    const/4 v10, 0x4

    const-string/jumbo v11, "title"

    aput-object v11, v9, v10

    const/4 v10, 0x5

    const-string/jumbo v11, "width"

    aput-object v11, v9, v10

    const/4 v10, 0x6

    const-string/jumbo v11, "height"

    aput-object v11, v9, v10

    iput-object v9, p0, Lorg/telegram/messenger/MediaController;->mediaProjections:[Ljava/lang/String;

    :goto_3
    :try_start_2
    sget-object v9, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    sget-object v10, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v11, 0x0

    new-instance v12, Lorg/telegram/messenger/MediaController$GalleryObserverExternal;

    invoke-direct {v12, p0}, Lorg/telegram/messenger/MediaController$GalleryObserverExternal;-><init>(Lorg/telegram/messenger/MediaController;)V

    invoke-virtual {v9, v10, v11, v12}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :goto_4
    :try_start_3
    sget-object v9, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    sget-object v10, Landroid/provider/MediaStore$Images$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v11, 0x0

    new-instance v12, Lorg/telegram/messenger/MediaController$GalleryObserverInternal;

    invoke-direct {v12, p0}, Lorg/telegram/messenger/MediaController$GalleryObserverInternal;-><init>(Lorg/telegram/messenger/MediaController;)V

    invoke-virtual {v9, v10, v11, v12}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    :goto_5
    :try_start_4
    new-instance v6, Lorg/telegram/messenger/MediaController$4;

    invoke-direct {v6, p0}, Lorg/telegram/messenger/MediaController$4;-><init>(Lorg/telegram/messenger/MediaController;)V

    sget-object v9, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v10, "phone"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyManager;

    if-eqz v4, :cond_7

    const/16 v9, 0x20

    invoke-virtual {v4, v6, v9}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    :cond_7
    :goto_6
    return-void

    :catch_1
    move-exception v2

    const-string/jumbo v9, "tmessages"

    invoke-static {v9, v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2

    :cond_8
    const/4 v9, 0x5

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string/jumbo v11, "_data"

    aput-object v11, v9, v10

    const/4 v10, 0x1

    const-string/jumbo v11, "_display_name"

    aput-object v11, v9, v10

    const/4 v10, 0x2

    const-string/jumbo v11, "bucket_display_name"

    aput-object v11, v9, v10

    const/4 v10, 0x3

    const-string/jumbo v11, "datetaken"

    aput-object v11, v9, v10

    const/4 v10, 0x4

    const-string/jumbo v11, "title"

    aput-object v11, v9, v10

    iput-object v9, p0, Lorg/telegram/messenger/MediaController;->mediaProjections:[Ljava/lang/String;

    goto :goto_3

    :catch_2
    move-exception v2

    const-string/jumbo v9, "tmessages"

    invoke-static {v9, v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4

    :catch_3
    move-exception v2

    const-string/jumbo v9, "tmessages"

    invoke-static {v9, v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5

    :catch_4
    move-exception v2

    const-string/jumbo v9, "tmessages"

    invoke-static {v9, v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_6
.end method

.method static synthetic access$000(Lorg/telegram/messenger/MediaController;)Landroid/media/AudioRecord;
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->audioRecorder:Landroid/media/AudioRecord;

    return-object v0
.end method

.method static synthetic access$002(Lorg/telegram/messenger/MediaController;Landroid/media/AudioRecord;)Landroid/media/AudioRecord;
    .locals 0

    iput-object p1, p0, Lorg/telegram/messenger/MediaController;->audioRecorder:Landroid/media/AudioRecord;

    return-object p1
.end method

.method static synthetic access$100(Lorg/telegram/messenger/MediaController;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->recordBuffers:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1000(Lorg/telegram/messenger/MediaController;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->recordRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1100(Lorg/telegram/messenger/MediaController;)J
    .locals 2

    iget-wide v0, p0, Lorg/telegram/messenger/MediaController;->recordStartTime:J

    return-wide v0
.end method

.method static synthetic access$1102(Lorg/telegram/messenger/MediaController;J)J
    .locals 1

    iput-wide p1, p0, Lorg/telegram/messenger/MediaController;->recordStartTime:J

    return-wide p1
.end method

.method static synthetic access$1200(Lorg/telegram/messenger/MediaController;)I
    .locals 1

    iget v0, p0, Lorg/telegram/messenger/MediaController;->sendAfterDone:I

    return v0
.end method

.method static synthetic access$1202(Lorg/telegram/messenger/MediaController;I)I
    .locals 0

    iput p1, p0, Lorg/telegram/messenger/MediaController;->sendAfterDone:I

    return p1
.end method

.method static synthetic access$1300(Lorg/telegram/messenger/MediaController;I)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/messenger/MediaController;->stopRecordingInternal(I)V

    return-void
.end method

.method static synthetic access$1400(Lorg/telegram/messenger/MediaController;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->refreshGalleryRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1402(Lorg/telegram/messenger/MediaController;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    iput-object p1, p0, Lorg/telegram/messenger/MediaController;->refreshGalleryRunnable:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$1600(Lorg/telegram/messenger/MediaController;)I
    .locals 1

    iget v0, p0, Lorg/telegram/messenger/MediaController;->startObserverToken:I

    return v0
.end method

.method static synthetic access$1700(Lorg/telegram/messenger/MediaController;)Lorg/telegram/messenger/MediaController$InternalObserver;
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->internalObserver:Lorg/telegram/messenger/MediaController$InternalObserver;

    return-object v0
.end method

.method static synthetic access$1702(Lorg/telegram/messenger/MediaController;Lorg/telegram/messenger/MediaController$InternalObserver;)Lorg/telegram/messenger/MediaController$InternalObserver;
    .locals 0

    iput-object p1, p0, Lorg/telegram/messenger/MediaController;->internalObserver:Lorg/telegram/messenger/MediaController$InternalObserver;

    return-object p1
.end method

.method static synthetic access$1800(Lorg/telegram/messenger/MediaController;)Lorg/telegram/messenger/MediaController$ExternalObserver;
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->externalObserver:Lorg/telegram/messenger/MediaController$ExternalObserver;

    return-object v0
.end method

.method static synthetic access$1802(Lorg/telegram/messenger/MediaController;Lorg/telegram/messenger/MediaController$ExternalObserver;)Lorg/telegram/messenger/MediaController$ExternalObserver;
    .locals 0

    iput-object p1, p0, Lorg/telegram/messenger/MediaController;->externalObserver:Lorg/telegram/messenger/MediaController$ExternalObserver;

    return-object p1
.end method

.method static synthetic access$1900(Lorg/telegram/messenger/MediaController;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->recordStartRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1902(Lorg/telegram/messenger/MediaController;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    iput-object p1, p0, Lorg/telegram/messenger/MediaController;->recordStartRunnable:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$200(Lorg/telegram/messenger/MediaController;)I
    .locals 1

    iget v0, p0, Lorg/telegram/messenger/MediaController;->recordBufferSize:I

    return v0
.end method

.method static synthetic access$2000(Lorg/telegram/messenger/MediaController;)Lorg/telegram/tgnet/TLRPC$TL_document;
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->recordingAudio:Lorg/telegram/tgnet/TLRPC$TL_document;

    return-object v0
.end method

.method static synthetic access$2002(Lorg/telegram/messenger/MediaController;Lorg/telegram/tgnet/TLRPC$TL_document;)Lorg/telegram/tgnet/TLRPC$TL_document;
    .locals 0

    iput-object p1, p0, Lorg/telegram/messenger/MediaController;->recordingAudio:Lorg/telegram/tgnet/TLRPC$TL_document;

    return-object p1
.end method

.method static synthetic access$2102(Lorg/telegram/messenger/MediaController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/messenger/MediaController;->callInProgress:Z

    return p1
.end method

.method static synthetic access$2200(Lorg/telegram/messenger/MediaController;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->sync:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$2300(Lorg/telegram/messenger/MediaController;)Landroid/media/MediaPlayer;
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->audioPlayer:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method static synthetic access$2400(Lorg/telegram/messenger/MediaController;)Landroid/media/AudioTrack;
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->audioTrackPlayer:Landroid/media/AudioTrack;

    return-object v0
.end method

.method static synthetic access$2500(Lorg/telegram/messenger/MediaController;)Z
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/messenger/MediaController;->isPaused:Z

    return v0
.end method

.method static synthetic access$2600(Lorg/telegram/messenger/MediaController;)I
    .locals 1

    iget v0, p0, Lorg/telegram/messenger/MediaController;->ignoreFirstProgress:I

    return v0
.end method

.method static synthetic access$2602(Lorg/telegram/messenger/MediaController;I)I
    .locals 0

    iput p1, p0, Lorg/telegram/messenger/MediaController;->ignoreFirstProgress:I

    return p1
.end method

.method static synthetic access$2610(Lorg/telegram/messenger/MediaController;)I
    .locals 2

    iget v0, p0, Lorg/telegram/messenger/MediaController;->ignoreFirstProgress:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lorg/telegram/messenger/MediaController;->ignoreFirstProgress:I

    return v0
.end method

.method static synthetic access$2700(Lorg/telegram/messenger/MediaController;)I
    .locals 1

    iget v0, p0, Lorg/telegram/messenger/MediaController;->lastProgress:I

    return v0
.end method

.method static synthetic access$2702(Lorg/telegram/messenger/MediaController;I)I
    .locals 0

    iput p1, p0, Lorg/telegram/messenger/MediaController;->lastProgress:I

    return p1
.end method

.method static synthetic access$2800(Lorg/telegram/messenger/MediaController;)J
    .locals 2

    iget-wide v0, p0, Lorg/telegram/messenger/MediaController;->lastPlayPcm:J

    return-wide v0
.end method

.method static synthetic access$2802(Lorg/telegram/messenger/MediaController;J)J
    .locals 1

    iput-wide p1, p0, Lorg/telegram/messenger/MediaController;->lastPlayPcm:J

    return-wide p1
.end method

.method static synthetic access$2900(Lorg/telegram/messenger/MediaController;)J
    .locals 2

    iget-wide v0, p0, Lorg/telegram/messenger/MediaController;->currentTotalPcmDuration:J

    return-wide v0
.end method

.method static synthetic access$300(Lorg/telegram/messenger/MediaController;)J
    .locals 2

    iget-wide v0, p0, Lorg/telegram/messenger/MediaController;->samplesCount:J

    return-wide v0
.end method

.method static synthetic access$302(Lorg/telegram/messenger/MediaController;J)J
    .locals 1

    iput-wide p1, p0, Lorg/telegram/messenger/MediaController;->samplesCount:J

    return-wide p1
.end method

.method static synthetic access$3100(Lorg/telegram/messenger/MediaController;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/messenger/MediaController;->checkScreenshots(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$3200(Lorg/telegram/messenger/MediaController;)Z
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/messenger/MediaController;->decodingFinished:Z

    return v0
.end method

.method static synthetic access$3202(Lorg/telegram/messenger/MediaController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/messenger/MediaController;->decodingFinished:Z

    return p1
.end method

.method static synthetic access$3300(Lorg/telegram/messenger/MediaController;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/messenger/MediaController;->checkPlayerQueue()V

    return-void
.end method

.method static synthetic access$3400(Lorg/telegram/messenger/MediaController;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->playerSync:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$3500(Lorg/telegram/messenger/MediaController;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->freePlayerBuffers:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$3600(Lorg/telegram/messenger/MediaController;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->usedPlayerBuffers:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$3700(Lorg/telegram/messenger/MediaController;)I
    .locals 1

    iget v0, p0, Lorg/telegram/messenger/MediaController;->playerBufferSize:I

    return v0
.end method

.method static synthetic access$3800(Lorg/telegram/messenger/MediaController;Ljava/nio/ByteBuffer;I[I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/messenger/MediaController;->readOpusFile(Ljava/nio/ByteBuffer;I[I)V

    return-void
.end method

.method static synthetic access$3900(Lorg/telegram/messenger/MediaController;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->playerObjectSync:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$400(Lorg/telegram/messenger/MediaController;)[S
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->recordSamples:[S

    return-object v0
.end method

.method static synthetic access$4000(Lorg/telegram/messenger/MediaController;)I
    .locals 1

    iget v0, p0, Lorg/telegram/messenger/MediaController;->buffersWrited:I

    return v0
.end method

.method static synthetic access$4008(Lorg/telegram/messenger/MediaController;)I
    .locals 2

    iget v0, p0, Lorg/telegram/messenger/MediaController;->buffersWrited:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/messenger/MediaController;->buffersWrited:I

    return v0
.end method

.method static synthetic access$4100(Lorg/telegram/messenger/MediaController;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/messenger/MediaController;->checkDecoderQueue()V

    return-void
.end method

.method static synthetic access$4200(Lorg/telegram/messenger/MediaController;)Landroid/hardware/Sensor;
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->gravitySensor:Landroid/hardware/Sensor;

    return-object v0
.end method

.method static synthetic access$4300(Lorg/telegram/messenger/MediaController;)Landroid/hardware/SensorManager;
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->sensorManager:Landroid/hardware/SensorManager;

    return-object v0
.end method

.method static synthetic access$4400(Lorg/telegram/messenger/MediaController;)Landroid/hardware/Sensor;
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->linearSensor:Landroid/hardware/Sensor;

    return-object v0
.end method

.method static synthetic access$4500(Lorg/telegram/messenger/MediaController;)Landroid/hardware/Sensor;
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->accelerometerSensor:Landroid/hardware/Sensor;

    return-object v0
.end method

.method static synthetic access$4600(Lorg/telegram/messenger/MediaController;)Landroid/hardware/Sensor;
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->proximitySensor:Landroid/hardware/Sensor;

    return-object v0
.end method

.method static synthetic access$4700(Lorg/telegram/messenger/MediaController;F)I
    .locals 1

    invoke-direct {p0, p1}, Lorg/telegram/messenger/MediaController;->seekOpusFile(F)I

    move-result v0

    return v0
.end method

.method static synthetic access$4800(Lorg/telegram/messenger/MediaController;Ljava/lang/String;)I
    .locals 1

    invoke-direct {p0, p1}, Lorg/telegram/messenger/MediaController;->openOpusFile(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$4900(Lorg/telegram/messenger/MediaController;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->playlist:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$500(Lorg/telegram/messenger/MediaController;)Ljava/nio/ByteBuffer;
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->fileBuffer:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method static synthetic access$5000(Lorg/telegram/messenger/MediaController;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/messenger/MediaController;->playNextMessage(Z)V

    return-void
.end method

.method static synthetic access$5100(Lorg/telegram/messenger/MediaController;)Lorg/telegram/messenger/MessageObject;
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    return-object v0
.end method

.method static synthetic access$5200(Lorg/telegram/messenger/MediaController;)Ljava/io/File;
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->recordingAudioFile:Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$5202(Lorg/telegram/messenger/MediaController;Ljava/io/File;)Ljava/io/File;
    .locals 0

    iput-object p1, p0, Lorg/telegram/messenger/MediaController;->recordingAudioFile:Ljava/io/File;

    return-object p1
.end method

.method static synthetic access$5300(Lorg/telegram/messenger/MediaController;Ljava/lang/String;)I
    .locals 1

    invoke-direct {p0, p1}, Lorg/telegram/messenger/MediaController;->startRecord(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$5400(Lorg/telegram/messenger/MediaController;)J
    .locals 2

    iget-wide v0, p0, Lorg/telegram/messenger/MediaController;->recordDialogId:J

    return-wide v0
.end method

.method static synthetic access$5402(Lorg/telegram/messenger/MediaController;J)J
    .locals 1

    iput-wide p1, p0, Lorg/telegram/messenger/MediaController;->recordDialogId:J

    return-wide p1
.end method

.method static synthetic access$5500(Lorg/telegram/messenger/MediaController;)Lorg/telegram/messenger/MessageObject;
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->recordReplyingMessageObject:Lorg/telegram/messenger/MessageObject;

    return-object v0
.end method

.method static synthetic access$5502(Lorg/telegram/messenger/MediaController;Lorg/telegram/messenger/MessageObject;)Lorg/telegram/messenger/MessageObject;
    .locals 0

    iput-object p1, p0, Lorg/telegram/messenger/MediaController;->recordReplyingMessageObject:Lorg/telegram/messenger/MessageObject;

    return-object p1
.end method

.method static synthetic access$5600(Lorg/telegram/messenger/MediaController;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/messenger/MediaController;->stopRecord()V

    return-void
.end method

.method static synthetic access$5700(Lorg/telegram/messenger/MediaController;)Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->generatingWaveform:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$5800()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lorg/telegram/messenger/MediaController;->projectionPhotos:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$5900()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lorg/telegram/messenger/MediaController;->projectionVideo:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lorg/telegram/messenger/MediaController;Ljava/nio/ByteBuffer;I)I
    .locals 1

    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/MediaController;->writeFrame(Ljava/nio/ByteBuffer;I)I

    move-result v0

    return v0
.end method

.method static synthetic access$6000(ILjava/util/ArrayList;Ljava/lang/Integer;Ljava/util/ArrayList;Ljava/lang/Integer;Lorg/telegram/messenger/MediaController$AlbumEntry;I)V
    .locals 0

    invoke-static/range {p0 .. p6}, Lorg/telegram/messenger/MediaController;->broadcastNewPhotos(ILjava/util/ArrayList;Ljava/lang/Integer;Ljava/util/ArrayList;Ljava/lang/Integer;Lorg/telegram/messenger/MediaController$AlbumEntry;I)V

    return-void
.end method

.method static synthetic access$6102(Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    sput-object p0, Lorg/telegram/messenger/MediaController;->broadcastPhotosRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$6200(Lorg/telegram/messenger/MediaController;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->videoConvertSync:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$6302(Lorg/telegram/messenger/MediaController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/messenger/MediaController;->cancelCurrentVideoConversion:Z

    return p1
.end method

.method static synthetic access$6400(Lorg/telegram/messenger/MediaController;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->videoConvertQueue:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$6500(Lorg/telegram/messenger/MediaController;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/messenger/MediaController;->startVideoConvertFromQueue()V

    return-void
.end method

.method static synthetic access$6600(Lorg/telegram/messenger/MediaController;Lorg/telegram/messenger/MessageObject;)Z
    .locals 1

    invoke-direct {p0, p1}, Lorg/telegram/messenger/MediaController;->convertVideo(Lorg/telegram/messenger/MessageObject;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lorg/telegram/messenger/MediaController;)J
    .locals 2

    iget-wide v0, p0, Lorg/telegram/messenger/MediaController;->recordTimeCount:J

    return-wide v0
.end method

.method static synthetic access$702(Lorg/telegram/messenger/MediaController;J)J
    .locals 1

    iput-wide p1, p0, Lorg/telegram/messenger/MediaController;->recordTimeCount:J

    return-wide p1
.end method

.method static synthetic access$800(Lorg/telegram/messenger/MediaController;)Lorg/telegram/messenger/DispatchQueue;
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->recordQueue:Lorg/telegram/messenger/DispatchQueue;

    return-object v0
.end method

.method static synthetic access$900(Lorg/telegram/messenger/MediaController;)Lorg/telegram/messenger/DispatchQueue;
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->fileEncodingQueue:Lorg/telegram/messenger/DispatchQueue;

    return-object v0
.end method

.method private static broadcastNewPhotos(ILjava/util/ArrayList;Ljava/lang/Integer;Ljava/util/ArrayList;Ljava/lang/Integer;Lorg/telegram/messenger/MediaController$AlbumEntry;I)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/MediaController$AlbumEntry;",
            ">;",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/MediaController$AlbumEntry;",
            ">;",
            "Ljava/lang/Integer;",
            "Lorg/telegram/messenger/MediaController$AlbumEntry;",
            "I)V"
        }
    .end annotation

    sget-object v0, Lorg/telegram/messenger/MediaController;->broadcastPhotosRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    sget-object v0, Lorg/telegram/messenger/MediaController;->broadcastPhotosRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    :cond_0
    new-instance v0, Lorg/telegram/messenger/MediaController$24;

    move v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lorg/telegram/messenger/MediaController$24;-><init>(ILjava/util/ArrayList;Ljava/lang/Integer;Ljava/util/ArrayList;Ljava/lang/Integer;Lorg/telegram/messenger/MediaController$AlbumEntry;)V

    sput-object v0, Lorg/telegram/messenger/MediaController;->broadcastPhotosRunnable:Ljava/lang/Runnable;

    int-to-long v2, p6

    invoke-static {v0, v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    return-void
.end method

.method private buildShuffledPlayList()V
    .locals 7

    iget-object v5, p0, Lorg/telegram/messenger/MediaController;->playlist:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    return-void

    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    iget-object v5, p0, Lorg/telegram/messenger/MediaController;->playlist:Ljava/util/ArrayList;

    invoke-direct {v1, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v5, p0, Lorg/telegram/messenger/MediaController;->shuffledPlaylist:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    iget-object v5, p0, Lorg/telegram/messenger/MediaController;->playlist:Ljava/util/ArrayList;

    iget v6, p0, Lorg/telegram/messenger/MediaController;->currentPlaylistNum:I

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/messenger/MessageObject;

    iget v5, p0, Lorg/telegram/messenger/MediaController;->currentPlaylistNum:I

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v5, p0, Lorg/telegram/messenger/MediaController;->shuffledPlaylist:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    sget-object v5, Lorg/telegram/messenger/Utilities;->random:Ljava/security/SecureRandom;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/security/SecureRandom;->nextInt(I)I

    move-result v3

    iget-object v5, p0, Lorg/telegram/messenger/MediaController;->shuffledPlaylist:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private checkAudioFocus(Lorg/telegram/messenger/MessageObject;)V
    .locals 7

    const/4 v6, 0x2

    const/4 v3, 0x3

    const/4 v4, 0x1

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->isVoice()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lorg/telegram/messenger/MediaController;->useFrontSpeaker:Z

    if-eqz v2, :cond_1

    const/4 v0, 0x3

    :goto_0
    iget v2, p0, Lorg/telegram/messenger/MediaController;->hasAudioFocus:I

    if-eq v2, v0, :cond_0

    iput v0, p0, Lorg/telegram/messenger/MediaController;->hasAudioFocus:I

    if-ne v0, v3, :cond_3

    invoke-static {}, Lorg/telegram/messenger/NotificationsController;->getInstance()Lorg/telegram/messenger/NotificationsController;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/messenger/NotificationsController;->audioManager:Landroid/media/AudioManager;

    const/4 v3, 0x0

    invoke-virtual {v2, p0, v3, v4}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    move-result v1

    :goto_1
    if-ne v1, v4, :cond_0

    iput v6, p0, Lorg/telegram/messenger/MediaController;->audioFocus:I

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x2

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    invoke-static {}, Lorg/telegram/messenger/NotificationsController;->getInstance()Lorg/telegram/messenger/NotificationsController;

    move-result-object v2

    iget-object v5, v2, Lorg/telegram/messenger/NotificationsController;->audioManager:Landroid/media/AudioManager;

    if-ne v0, v6, :cond_4

    move v2, v3

    :goto_2
    invoke-virtual {v5, p0, v3, v2}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    move-result v1

    goto :goto_1

    :cond_4
    move v2, v4

    goto :goto_2
.end method

.method private checkConversionCanceled()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->videoConvertSync:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-boolean v0, p0, Lorg/telegram/messenger/MediaController;->cancelCurrentVideoConversion:Z

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "canceled conversion"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    :cond_0
    return-void
.end method

.method private checkDecoderQueue()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->fileDecodingQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/MediaController$7;

    invoke-direct {v1, p0}, Lorg/telegram/messenger/MediaController$7;-><init>(Lorg/telegram/messenger/MediaController;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    return-void
.end method

.method private checkDownloadFinished(Ljava/lang/String;I)V
    .locals 11

    const/16 v10, 0x10

    const/16 v9, 0x8

    const/4 v8, 0x4

    const/4 v7, 0x1

    const/4 v6, 0x2

    iget-object v1, p0, Lorg/telegram/messenger/MediaController;->downloadQueueKeys:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/DownloadObject;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lorg/telegram/messenger/MediaController;->downloadQueueKeys:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p2, :cond_0

    if-ne p2, v6, :cond_1

    :cond_0
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v1

    iget-wide v2, v0, Lorg/telegram/messenger/DownloadObject;->id:J

    iget v4, v0, Lorg/telegram/messenger/DownloadObject;->type:I

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Lorg/telegram/messenger/MessagesStorage;->removeFromDownloadQueue(JIZ)V

    :cond_1
    iget v1, v0, Lorg/telegram/messenger/DownloadObject;->type:I

    if-ne v1, v7, :cond_3

    iget-object v1, p0, Lorg/telegram/messenger/MediaController;->photoDownloadQueue:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v1, p0, Lorg/telegram/messenger/MediaController;->photoDownloadQueue:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0, v7}, Lorg/telegram/messenger/MediaController;->newDownloadObjectsAvailable(I)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    iget v1, v0, Lorg/telegram/messenger/DownloadObject;->type:I

    if-ne v1, v6, :cond_4

    iget-object v1, p0, Lorg/telegram/messenger/MediaController;->audioDownloadQueue:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v1, p0, Lorg/telegram/messenger/MediaController;->audioDownloadQueue:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0, v6}, Lorg/telegram/messenger/MediaController;->newDownloadObjectsAvailable(I)V

    goto :goto_0

    :cond_4
    iget v1, v0, Lorg/telegram/messenger/DownloadObject;->type:I

    if-ne v1, v8, :cond_5

    iget-object v1, p0, Lorg/telegram/messenger/MediaController;->videoDownloadQueue:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v1, p0, Lorg/telegram/messenger/MediaController;->videoDownloadQueue:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0, v8}, Lorg/telegram/messenger/MediaController;->newDownloadObjectsAvailable(I)V

    goto :goto_0

    :cond_5
    iget v1, v0, Lorg/telegram/messenger/DownloadObject;->type:I

    if-ne v1, v9, :cond_6

    iget-object v1, p0, Lorg/telegram/messenger/MediaController;->documentDownloadQueue:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v1, p0, Lorg/telegram/messenger/MediaController;->documentDownloadQueue:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0, v9}, Lorg/telegram/messenger/MediaController;->newDownloadObjectsAvailable(I)V

    goto :goto_0

    :cond_6
    iget v1, v0, Lorg/telegram/messenger/DownloadObject;->type:I

    if-ne v1, v10, :cond_7

    iget-object v1, p0, Lorg/telegram/messenger/MediaController;->musicDownloadQueue:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v1, p0, Lorg/telegram/messenger/MediaController;->musicDownloadQueue:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0, v10}, Lorg/telegram/messenger/MediaController;->newDownloadObjectsAvailable(I)V

    goto :goto_0

    :cond_7
    iget v1, v0, Lorg/telegram/messenger/DownloadObject;->type:I

    const/16 v2, 0x20

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lorg/telegram/messenger/MediaController;->gifDownloadQueue:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v1, p0, Lorg/telegram/messenger/MediaController;->gifDownloadQueue:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v1, 0x20

    invoke-virtual {p0, v1}, Lorg/telegram/messenger/MediaController;->newDownloadObjectsAvailable(I)V

    goto :goto_0
.end method

.method private checkIsNextMusicFileDownloaded()V
    .locals 9

    const/4 v6, 0x0

    invoke-direct {p0}, Lorg/telegram/messenger/MediaController;->getCurrentDownloadMask()I

    move-result v7

    and-int/lit8 v7, v7, 0x10

    if-nez v7, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v7, p0, Lorg/telegram/messenger/MediaController;->shuffleMusic:Z

    if-eqz v7, :cond_4

    iget-object v1, p0, Lorg/telegram/messenger/MediaController;->shuffledPlaylist:Ljava/util/ArrayList;

    :goto_1
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/4 v8, 0x2

    if-lt v7, v8, :cond_0

    iget v7, p0, Lorg/telegram/messenger/MediaController;->currentPlaylistNum:I

    add-int/lit8 v5, v7, 0x1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lt v5, v7, :cond_2

    const/4 v5, 0x0

    :cond_2
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/messenger/MessageObject;

    const/4 v3, 0x0

    iget-object v7, v4, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    if-eqz v7, :cond_3

    iget-object v7, v4, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_3

    new-instance v3, Ljava/io/File;

    iget-object v7, v4, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    invoke-direct {v3, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_3

    const/4 v3, 0x0

    :cond_3
    if-eqz v3, :cond_5

    move-object v0, v3

    :goto_2
    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_6

    const/4 v2, 0x1

    :goto_3
    if-eqz v0, :cond_0

    if-eq v0, v3, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_0

    invoke-virtual {v4}, Lorg/telegram/messenger/MessageObject;->isMusic()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v7

    invoke-virtual {v4}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v8

    invoke-virtual {v7, v8, v6, v6}, Lorg/telegram/messenger/FileLoader;->loadFile(Lorg/telegram/tgnet/TLRPC$Document;ZZ)V

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lorg/telegram/messenger/MediaController;->playlist:Ljava/util/ArrayList;

    goto :goto_1

    :cond_5
    iget-object v7, v4, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-static {v7}, Lorg/telegram/messenger/FileLoader;->getPathToMessage(Lorg/telegram/tgnet/TLRPC$Message;)Ljava/io/File;

    move-result-object v0

    goto :goto_2

    :cond_6
    move v2, v6

    goto :goto_3
.end method

.method private checkPlayerQueue()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->playerQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/MediaController$8;

    invoke-direct {v1, p0}, Lorg/telegram/messenger/MediaController$8;-><init>(Lorg/telegram/messenger/MediaController;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    return-void
.end method

.method private checkScreenshots(Ljava/util/ArrayList;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    const-wide/16 v10, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    iget-wide v4, p0, Lorg/telegram/messenger/MediaController;->lastSecretChatEnterTime:J

    cmp-long v4, v4, v10

    if-eqz v4, :cond_0

    iget-object v4, p0, Lorg/telegram/messenger/MediaController;->lastSecretChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lorg/telegram/messenger/MediaController;->lastSecretChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    instance-of v4, v4, Lorg/telegram/tgnet/TLRPC$TL_encryptedChat;

    if-nez v4, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-wide/16 v2, 0x7d0

    const/4 v1, 0x0

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    iget-wide v6, p0, Lorg/telegram/messenger/MediaController;->lastMediaCheckTime:J

    cmp-long v5, v6, v10

    if-eqz v5, :cond_3

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    iget-wide v8, p0, Lorg/telegram/messenger/MediaController;->lastMediaCheckTime:J

    cmp-long v5, v6, v8

    if-lez v5, :cond_2

    :cond_3
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    iget-wide v8, p0, Lorg/telegram/messenger/MediaController;->lastSecretChatEnterTime:J

    cmp-long v5, v6, v8

    if-ltz v5, :cond_2

    iget-wide v6, p0, Lorg/telegram/messenger/MediaController;->lastSecretChatLeaveTime:J

    cmp-long v5, v6, v10

    if-eqz v5, :cond_4

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    iget-wide v8, p0, Lorg/telegram/messenger/MediaController;->lastSecretChatLeaveTime:J

    add-long/2addr v8, v2

    cmp-long v5, v6, v8

    if-gtz v5, :cond_2

    :cond_4
    iget-wide v6, p0, Lorg/telegram/messenger/MediaController;->lastMediaCheckTime:J

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    iput-wide v6, p0, Lorg/telegram/messenger/MediaController;->lastMediaCheckTime:J

    const/4 v1, 0x1

    goto :goto_1

    :cond_5
    if-eqz v1, :cond_0

    invoke-static {}, Lorg/telegram/messenger/SecretChatHelper;->getInstance()Lorg/telegram/messenger/SecretChatHelper;

    move-result-object v4

    iget-object v5, p0, Lorg/telegram/messenger/MediaController;->lastSecretChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    iget-object v6, p0, Lorg/telegram/messenger/MediaController;->lastSecretChatVisibleMessages:Ljava/util/ArrayList;

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v6, v7}, Lorg/telegram/messenger/SecretChatHelper;->sendScreenshotMessage(Lorg/telegram/tgnet/TLRPC$EncryptedChat;Ljava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$Message;)V

    goto :goto_0
.end method

.method private native closeOpusFile()V
.end method

.method private convertVideo(Lorg/telegram/messenger/MessageObject;)Z
    .locals 90
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    move-object/from16 v0, p1

    iget-object v6, v0, Lorg/telegram/messenger/MessageObject;->videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    iget-object v0, v6, Lorg/telegram/messenger/VideoEditedInfo;->originalPath:Ljava/lang/String;

    move-object/from16 v84, v0

    move-object/from16 v0, p1

    iget-object v6, v0, Lorg/telegram/messenger/MessageObject;->videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    iget-wide v0, v6, Lorg/telegram/messenger/VideoEditedInfo;->startTime:J

    move-wide/from16 v76, v0

    move-object/from16 v0, p1

    iget-object v6, v0, Lorg/telegram/messenger/MessageObject;->videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    iget-wide v0, v6, Lorg/telegram/messenger/VideoEditedInfo;->endTime:J

    move-wide/from16 v18, v0

    move-object/from16 v0, p1

    iget-object v6, v0, Lorg/telegram/messenger/MessageObject;->videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    iget v0, v6, Lorg/telegram/messenger/VideoEditedInfo;->resultWidth:I

    move/from16 v72, v0

    move-object/from16 v0, p1

    iget-object v6, v0, Lorg/telegram/messenger/MessageObject;->videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    iget v0, v6, Lorg/telegram/messenger/VideoEditedInfo;->resultHeight:I

    move/from16 v70, v0

    move-object/from16 v0, p1

    iget-object v6, v0, Lorg/telegram/messenger/MessageObject;->videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    iget v0, v6, Lorg/telegram/messenger/VideoEditedInfo;->rotationValue:I

    move/from16 v74, v0

    move-object/from16 v0, p1

    iget-object v6, v0, Lorg/telegram/messenger/MessageObject;->videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    iget v0, v6, Lorg/telegram/messenger/VideoEditedInfo;->originalWidth:I

    move/from16 v61, v0

    move-object/from16 v0, p1

    iget-object v6, v0, Lorg/telegram/messenger/MessageObject;->videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    iget v0, v6, Lorg/telegram/messenger/VideoEditedInfo;->originalHeight:I

    move/from16 v60, v0

    move-object/from16 v0, p1

    iget-object v6, v0, Lorg/telegram/messenger/MessageObject;->videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    iget v0, v6, Lorg/telegram/messenger/VideoEditedInfo;->bitrate:I

    move/from16 v24, v0

    const/16 v73, 0x0

    new-instance v20, Ljava/io/File;

    move-object/from16 v0, p1

    iget-object v6, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    move-object/from16 v0, v20

    invoke-direct {v0, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x12

    if-ge v6, v10, :cond_2

    move/from16 v0, v70

    move/from16 v1, v72

    if-le v0, v1, :cond_2

    move/from16 v0, v72

    move/from16 v1, v61

    if-eq v0, v1, :cond_2

    move/from16 v0, v70

    move/from16 v1, v60

    if-eq v0, v1, :cond_2

    move/from16 v79, v70

    move/from16 v70, v72

    move/from16 v72, v79

    const/16 v74, 0x5a

    const/16 v73, 0x10e

    :cond_0
    :goto_0
    sget-object v6, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v10, "videoconvert"

    const/4 v11, 0x0

    invoke-virtual {v6, v10, v11}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v68

    const-string/jumbo v6, "isPreviousOk"

    const/4 v10, 0x1

    move-object/from16 v0, v68

    invoke-interface {v0, v6, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v55

    invoke-interface/range {v68 .. v68}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    const-string/jumbo v10, "isPreviousOk"

    const/4 v11, 0x0

    invoke-interface {v6, v10, v11}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->commit()Z

    new-instance v51, Ljava/io/File;

    move-object/from16 v0, v51

    move-object/from16 v1, v84

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v51 .. v51}, Ljava/io/File;->canRead()Z

    move-result v6

    if-eqz v6, :cond_1

    if-nez v55, :cond_5

    :cond_1
    const/4 v6, 0x1

    const/4 v10, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2, v6, v10}, Lorg/telegram/messenger/MediaController;->didWriteData(Lorg/telegram/messenger/MessageObject;Ljava/io/File;ZZ)V

    invoke-interface/range {v68 .. v68}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    const-string/jumbo v10, "isPreviousOk"

    const/4 v11, 0x1

    invoke-interface {v6, v10, v11}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->commit()Z

    const/4 v6, 0x0

    :goto_1
    return v6

    :cond_2
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x14

    if-le v6, v10, :cond_0

    const/16 v6, 0x5a

    move/from16 v0, v74

    if-ne v0, v6, :cond_3

    move/from16 v79, v70

    move/from16 v70, v72

    move/from16 v72, v79

    const/16 v74, 0x0

    const/16 v73, 0x10e

    goto :goto_0

    :cond_3
    const/16 v6, 0xb4

    move/from16 v0, v74

    if-ne v0, v6, :cond_4

    const/16 v73, 0xb4

    const/16 v74, 0x0

    goto :goto_0

    :cond_4
    const/16 v6, 0x10e

    move/from16 v0, v74

    if-ne v0, v6, :cond_0

    move/from16 v79, v70

    move/from16 v70, v72

    move/from16 v72, v79

    const/16 v74, 0x0

    const/16 v73, 0x5a

    goto/16 :goto_0

    :cond_5
    const/4 v6, 0x1

    move-object/from16 v0, p0

    iput-boolean v6, v0, Lorg/telegram/messenger/MediaController;->videoConvertFirstWrite:Z

    const/16 v43, 0x0

    move-wide/from16 v86, v76

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v80

    if-eqz v72, :cond_49

    if-eqz v70, :cond_49

    const/16 v57, 0x0

    const/16 v45, 0x0

    :try_start_0
    new-instance v48, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct/range {v48 .. v48}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    new-instance v58, Lorg/telegram/messenger/video/Mp4Movie;

    invoke-direct/range {v58 .. v58}, Lorg/telegram/messenger/video/Mp4Movie;-><init>()V

    move-object/from16 v0, v58

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/video/Mp4Movie;->setCacheFile(Ljava/io/File;)V

    move-object/from16 v0, v58

    move/from16 v1, v74

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/video/Mp4Movie;->setRotation(I)V

    move-object/from16 v0, v58

    move/from16 v1, v72

    move/from16 v2, v70

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/video/Mp4Movie;->setSize(II)V

    new-instance v6, Lorg/telegram/messenger/video/MP4Builder;

    invoke-direct {v6}, Lorg/telegram/messenger/video/MP4Builder;-><init>()V

    move-object/from16 v0, v58

    invoke-virtual {v6, v0}, Lorg/telegram/messenger/video/MP4Builder;->createMovie(Lorg/telegram/messenger/video/Mp4Movie;)Lorg/telegram/messenger/video/MP4Builder;

    move-result-object v57

    new-instance v46, Landroid/media/MediaExtractor;

    invoke-direct/range {v46 .. v46}, Landroid/media/MediaExtractor;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    :try_start_1
    invoke-virtual/range {v51 .. v51}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v46

    invoke-virtual {v0, v6}, Landroid/media/MediaExtractor;->setDataSource(Ljava/lang/String;)V

    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/MediaController;->checkConversionCanceled()V

    move/from16 v0, v72

    move/from16 v1, v61

    if-ne v0, v1, :cond_6

    move/from16 v0, v70

    move/from16 v1, v60

    if-ne v0, v1, :cond_6

    if-eqz v73, :cond_46

    :cond_6
    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-direct {v0, v1, v6}, Lorg/telegram/messenger/MediaController;->selectTrack(Landroid/media/MediaExtractor;Z)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_6

    move-result v83

    if-ltz v83, :cond_4a

    const/4 v4, 0x0

    const/16 v37, 0x0

    const/16 v53, 0x0

    const/16 v64, 0x0

    const-wide/16 v88, -0x1

    const/16 v62, 0x0

    const/16 v50, 0x0

    const/16 v30, 0x0

    const/16 v78, 0x0

    const/16 v85, -0x5

    const/16 v69, 0x0

    :try_start_2
    sget-object v6, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v56

    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x12

    if-ge v6, v10, :cond_1f

    const-string/jumbo v6, "video/avc"

    invoke-static {v6}, Lorg/telegram/messenger/MediaController;->selectCodec(Ljava/lang/String;)Landroid/media/MediaCodecInfo;

    move-result-object v26

    const-string/jumbo v6, "video/avc"

    move-object/from16 v0, v26

    invoke-static {v0, v6}, Lorg/telegram/messenger/MediaController;->selectColorFormat(Landroid/media/MediaCodecInfo;Ljava/lang/String;)I

    move-result v28

    if-nez v28, :cond_e

    new-instance v6, Ljava/lang/RuntimeException;

    const-string/jumbo v10, "no supported color format"

    invoke-direct {v6, v10}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v35

    :goto_2
    :try_start_3
    const-string/jumbo v6, "tmessages"

    move-object/from16 v0, v35

    invoke-static {v6, v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_6

    const/16 v43, 0x1

    move-wide/from16 v16, v86

    :goto_3
    :try_start_4
    move-object/from16 v0, v46

    move/from16 v1, v83

    invoke-virtual {v0, v1}, Landroid/media/MediaExtractor;->unselectTrack(I)V

    if-eqz v64, :cond_7

    invoke-virtual/range {v64 .. v64}, Lorg/telegram/messenger/video/OutputSurface;->release()V

    :cond_7
    if-eqz v53, :cond_8

    invoke-virtual/range {v53 .. v53}, Lorg/telegram/messenger/video/InputSurface;->release()V

    :cond_8
    if-eqz v4, :cond_9

    invoke-virtual {v4}, Landroid/media/MediaCodec;->stop()V

    invoke-virtual {v4}, Landroid/media/MediaCodec;->release()V

    :cond_9
    if-eqz v37, :cond_a

    invoke-virtual/range {v37 .. v37}, Landroid/media/MediaCodec;->stop()V

    invoke-virtual/range {v37 .. v37}, Landroid/media/MediaCodec;->release()V

    :cond_a
    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/MediaController;->checkConversionCanceled()V

    :goto_4
    if-nez v43, :cond_b

    const/4 v6, -0x1

    move/from16 v0, v24

    if-eq v0, v6, :cond_b

    const/16 v21, 0x1

    move-object/from16 v11, p0

    move-object/from16 v12, p1

    move-object/from16 v13, v46

    move-object/from16 v14, v57

    move-object/from16 v15, v48

    invoke-direct/range {v11 .. v21}, Lorg/telegram/messenger/MediaController;->readAndWriteTrack(Lorg/telegram/messenger/MessageObject;Landroid/media/MediaExtractor;Lorg/telegram/messenger/video/MP4Builder;Landroid/media/MediaCodec$BufferInfo;JJLjava/io/File;Z)J
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_7

    :cond_b
    if-eqz v46, :cond_c

    invoke-virtual/range {v46 .. v46}, Landroid/media/MediaExtractor;->release()V

    :cond_c
    if-eqz v57, :cond_d

    const/4 v6, 0x0

    :try_start_5
    move-object/from16 v0, v57

    invoke-virtual {v0, v6}, Lorg/telegram/messenger/video/MP4Builder;->finishMovie(Z)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    :cond_d
    :goto_5
    const-string/jumbo v6, "tmessages"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "time = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    sub-long v12, v12, v80

    invoke-virtual {v10, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v6, v10}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v45, v46

    :goto_6
    invoke-interface/range {v68 .. v68}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    const-string/jumbo v10, "isPreviousOk"

    const/4 v11, 0x1

    invoke-interface {v6, v10, v11}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->commit()Z

    const/4 v6, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v20

    move/from16 v3, v43

    invoke-direct {v0, v1, v2, v6, v3}, Lorg/telegram/messenger/MediaController;->didWriteData(Lorg/telegram/messenger/MessageObject;Ljava/io/File;ZZ)V

    const/4 v6, 0x1

    goto/16 :goto_1

    :cond_e
    :try_start_6
    invoke-virtual/range {v26 .. v26}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v27

    const-string/jumbo v6, "OMX.qcom."

    move-object/from16 v0, v27

    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1b

    const/16 v69, 0x1

    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x10

    if-ne v6, v10, :cond_10

    const-string/jumbo v6, "lge"

    move-object/from16 v0, v56

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_f

    const-string/jumbo v6, "nokia"

    move-object/from16 v0, v56

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_10

    :cond_f
    const/16 v78, 0x1

    :cond_10
    :goto_7
    const-string/jumbo v6, "tmessages"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "codec = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual/range {v26 .. v26}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " manufacturer = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, v56

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "device = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v11, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v6, v10}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_8
    const-string/jumbo v6, "tmessages"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "colorFormat = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move/from16 v0, v28

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v6, v10}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move/from16 v71, v70

    const/16 v66, 0x0

    mul-int v6, v72, v70

    mul-int/lit8 v6, v6, 0x3

    div-int/lit8 v25, v6, 0x2

    if-nez v69, :cond_20

    rem-int/lit8 v6, v70, 0x10

    if-eqz v6, :cond_11

    rem-int/lit8 v6, v70, 0x10

    rsub-int/lit8 v6, v6, 0x10

    add-int v71, v71, v6

    sub-int v6, v71, v70

    mul-int v66, v72, v6

    mul-int/lit8 v6, v66, 0x5

    div-int/lit8 v6, v6, 0x4

    add-int v25, v25, v6

    :cond_11
    :goto_9
    move-object/from16 v0, v46

    move/from16 v1, v83

    invoke-virtual {v0, v1}, Landroid/media/MediaExtractor;->selectTrack(I)V

    const-wide/16 v10, 0x0

    cmp-long v6, v76, v10

    if-lez v6, :cond_22

    const/4 v6, 0x0

    move-object/from16 v0, v46

    move-wide/from16 v1, v76

    invoke-virtual {v0, v1, v2, v6}, Landroid/media/MediaExtractor;->seekTo(JI)V

    :goto_a
    move-object/from16 v0, v46

    move/from16 v1, v83

    invoke-virtual {v0, v1}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v52

    const-string/jumbo v6, "video/avc"

    move/from16 v0, v72

    move/from16 v1, v70

    invoke-static {v6, v0, v1}, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v63

    const-string/jumbo v6, "color-format"

    move-object/from16 v0, v63

    move/from16 v1, v28

    invoke-virtual {v0, v6, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string/jumbo v10, "bitrate"

    if-lez v24, :cond_25

    move/from16 v6, v24

    :goto_b
    move-object/from16 v0, v63

    invoke-virtual {v0, v10, v6}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string/jumbo v6, "frame-rate"

    const/16 v10, 0x19

    move-object/from16 v0, v63

    invoke-virtual {v0, v6, v10}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string/jumbo v6, "i-frame-interval"

    const/16 v10, 0xa

    move-object/from16 v0, v63

    invoke-virtual {v0, v6, v10}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x12

    if-ge v6, v10, :cond_12

    const-string/jumbo v6, "stride"

    add-int/lit8 v10, v72, 0x20

    move-object/from16 v0, v63

    invoke-virtual {v0, v6, v10}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string/jumbo v6, "slice-height"

    move-object/from16 v0, v63

    move/from16 v1, v70

    invoke-virtual {v0, v6, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    :cond_12
    const-string/jumbo v6, "video/avc"

    invoke-static {v6}, Landroid/media/MediaCodec;->createEncoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v37

    const/4 v6, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x1

    move-object/from16 v0, v37

    move-object/from16 v1, v63

    invoke-virtual {v0, v1, v6, v10, v11}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x12

    if-lt v6, v10, :cond_13

    new-instance v54, Lorg/telegram/messenger/video/InputSurface;

    invoke-virtual/range {v37 .. v37}, Landroid/media/MediaCodec;->createInputSurface()Landroid/view/Surface;

    move-result-object v6

    move-object/from16 v0, v54

    invoke-direct {v0, v6}, Lorg/telegram/messenger/video/InputSurface;-><init>(Landroid/view/Surface;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    :try_start_7
    invoke-virtual/range {v54 .. v54}, Lorg/telegram/messenger/video/InputSurface;->makeCurrent()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_8

    move-object/from16 v53, v54

    :cond_13
    :try_start_8
    invoke-virtual/range {v37 .. v37}, Landroid/media/MediaCodec;->start()V

    const-string/jumbo v6, "mime"

    move-object/from16 v0, v52

    invoke-virtual {v0, v6}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/media/MediaCodec;->createDecoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v4

    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x12

    if-lt v6, v10, :cond_26

    new-instance v65, Lorg/telegram/messenger/video/OutputSurface;

    invoke-direct/range {v65 .. v65}, Lorg/telegram/messenger/video/OutputSurface;-><init>()V

    move-object/from16 v64, v65

    :goto_c
    invoke-virtual/range {v64 .. v64}, Lorg/telegram/messenger/video/OutputSurface;->getSurface()Landroid/view/Surface;

    move-result-object v6

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v0, v52

    invoke-virtual {v4, v0, v6, v10, v11}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    invoke-virtual {v4}, Landroid/media/MediaCodec;->start()V

    const/16 v22, 0x9c4

    const/16 v31, 0x0

    const/16 v40, 0x0

    const/16 v38, 0x0

    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x15

    if-ge v6, v10, :cond_14

    invoke-virtual {v4}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v31

    invoke-virtual/range {v37 .. v37}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v40

    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x12

    if-ge v6, v10, :cond_14

    invoke-virtual/range {v37 .. v37}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v38

    :cond_14
    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/MediaController;->checkConversionCanceled()V

    :cond_15
    if-nez v62, :cond_45

    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/MediaController;->checkConversionCanceled()V

    if-nez v50, :cond_17

    const/16 v42, 0x0

    invoke-virtual/range {v46 .. v46}, Landroid/media/MediaExtractor;->getSampleTrackIndex()I

    move-result v47

    move/from16 v0, v47

    move/from16 v1, v83

    if-ne v0, v1, :cond_29

    const-wide/16 v10, 0x9c4

    invoke-virtual {v4, v10, v11}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v5

    if-ltz v5, :cond_16

    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x15

    if-ge v6, v10, :cond_27

    aget-object v49, v31, v5

    :goto_d
    const/4 v6, 0x0

    move-object/from16 v0, v46

    move-object/from16 v1, v49

    invoke-virtual {v0, v1, v6}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v7

    if-gez v7, :cond_28

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    const/4 v10, 0x4

    invoke-virtual/range {v4 .. v10}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    const/16 v50, 0x1

    :cond_16
    :goto_e
    if-eqz v42, :cond_17

    const-wide/16 v10, 0x9c4

    invoke-virtual {v4, v10, v11}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v5

    if-ltz v5, :cond_17

    const/4 v10, 0x0

    const/4 v11, 0x0

    const-wide/16 v12, 0x0

    const/4 v14, 0x4

    move-object v8, v4

    move v9, v5

    invoke-virtual/range {v8 .. v14}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    const/16 v50, 0x1

    :cond_17
    if-nez v30, :cond_2a

    const/16 v32, 0x1

    :goto_f
    const/16 v39, 0x1

    :cond_18
    :goto_10
    if-nez v32, :cond_19

    if-eqz v39, :cond_15

    :cond_19
    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/MediaController;->checkConversionCanceled()V

    const-wide/16 v10, 0x9c4

    move-object/from16 v0, v37

    move-object/from16 v1, v48

    invoke-virtual {v0, v1, v10, v11}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v41

    const/4 v6, -0x1

    move/from16 v0, v41

    if-ne v0, v6, :cond_2b

    const/16 v39, 0x0

    :cond_1a
    :goto_11
    const/4 v6, -0x1

    move/from16 v0, v41

    if-ne v0, v6, :cond_18

    if-nez v30, :cond_18

    const-wide/16 v10, 0x9c4

    move-object/from16 v0, v48

    invoke-virtual {v4, v0, v10, v11}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v33

    const/4 v6, -0x1

    move/from16 v0, v33

    if-ne v0, v6, :cond_37

    const/16 v32, 0x0

    goto :goto_10

    :cond_1b
    const-string/jumbo v6, "OMX.Intel."

    move-object/from16 v0, v27

    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1c

    const/16 v69, 0x2

    goto/16 :goto_7

    :cond_1c
    const-string/jumbo v6, "OMX.MTK.VIDEO.ENCODER.AVC"

    move-object/from16 v0, v27

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1d

    const/16 v69, 0x3

    goto/16 :goto_7

    :cond_1d
    const-string/jumbo v6, "OMX.SEC.AVC.Encoder"

    move-object/from16 v0, v27

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1e

    const/16 v69, 0x4

    const/16 v78, 0x1

    goto/16 :goto_7

    :cond_1e
    const-string/jumbo v6, "OMX.TI.DUCATI1.VIDEO.H264E"

    move-object/from16 v0, v27

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_10

    const/16 v69, 0x5

    goto/16 :goto_7

    :cond_1f
    const v28, 0x7f000789

    goto/16 :goto_8

    :cond_20
    const/4 v6, 0x1

    move/from16 v0, v69

    if-ne v0, v6, :cond_21

    invoke-virtual/range {v56 .. v56}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v10, "lge"

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_11

    mul-int v6, v72, v70

    add-int/lit16 v6, v6, 0x7ff

    and-int/lit16 v0, v6, -0x800

    move/from16 v82, v0

    mul-int v6, v72, v70

    sub-int v66, v82, v6

    add-int v25, v25, v66

    goto/16 :goto_9

    :cond_21
    const/4 v6, 0x5

    move/from16 v0, v69

    if-eq v0, v6, :cond_11

    const/4 v6, 0x3

    move/from16 v0, v69

    if-ne v0, v6, :cond_11

    const-string/jumbo v6, "baidu"

    move-object/from16 v0, v56

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_11

    rem-int/lit8 v6, v70, 0x10

    rsub-int/lit8 v6, v6, 0x10

    add-int v71, v71, v6

    sub-int v6, v71, v70

    mul-int v66, v72, v6

    mul-int/lit8 v6, v66, 0x5

    div-int/lit8 v6, v6, 0x4

    add-int v25, v25, v6

    goto/16 :goto_9

    :cond_22
    const-wide/16 v10, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, v46

    invoke-virtual {v0, v10, v11, v6}, Landroid/media/MediaExtractor;->seekTo(JI)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    goto/16 :goto_a

    :catchall_0
    move-exception v6

    move-object/from16 v45, v46

    move-wide/from16 v16, v86

    :goto_12
    if-eqz v45, :cond_23

    invoke-virtual/range {v45 .. v45}, Landroid/media/MediaExtractor;->release()V

    :cond_23
    if-eqz v57, :cond_24

    const/4 v10, 0x0

    :try_start_9
    move-object/from16 v0, v57

    invoke-virtual {v0, v10}, Lorg/telegram/messenger/video/MP4Builder;->finishMovie(Z)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_5

    :cond_24
    :goto_13
    const-string/jumbo v10, "tmessages"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "time = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    sub-long v12, v12, v80

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    throw v6

    :cond_25
    const v6, 0xe1000

    goto/16 :goto_b

    :cond_26
    :try_start_a
    new-instance v65, Lorg/telegram/messenger/video/OutputSurface;

    move-object/from16 v0, v65

    move/from16 v1, v72

    move/from16 v2, v70

    move/from16 v3, v73

    invoke-direct {v0, v1, v2, v3}, Lorg/telegram/messenger/video/OutputSurface;-><init>(III)V

    move-object/from16 v64, v65

    goto/16 :goto_c

    :cond_27
    invoke-virtual {v4, v5}, Landroid/media/MediaCodec;->getInputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v49

    goto/16 :goto_d

    :cond_28
    const/4 v6, 0x0

    invoke-virtual/range {v46 .. v46}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v8

    const/4 v10, 0x0

    invoke-virtual/range {v4 .. v10}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    invoke-virtual/range {v46 .. v46}, Landroid/media/MediaExtractor;->advance()Z

    goto/16 :goto_e

    :cond_29
    const/4 v6, -0x1

    move/from16 v0, v47

    if-ne v0, v6, :cond_16

    const/16 v42, 0x1

    goto/16 :goto_e

    :cond_2a
    const/16 v32, 0x0

    goto/16 :goto_f

    :cond_2b
    const/4 v6, -0x3

    move/from16 v0, v41

    if-ne v0, v6, :cond_2c

    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x15

    if-ge v6, v10, :cond_1a

    invoke-virtual/range {v37 .. v37}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v40

    goto/16 :goto_11

    :cond_2c
    const/4 v6, -0x2

    move/from16 v0, v41

    if-ne v0, v6, :cond_2d

    invoke-virtual/range {v37 .. v37}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v59

    const/4 v6, -0x5

    move/from16 v0, v85

    if-ne v0, v6, :cond_1a

    const/4 v6, 0x0

    move-object/from16 v0, v57

    move-object/from16 v1, v59

    invoke-virtual {v0, v1, v6}, Lorg/telegram/messenger/video/MP4Builder;->addTrack(Landroid/media/MediaFormat;Z)I

    move-result v85

    goto/16 :goto_11

    :cond_2d
    if-gez v41, :cond_2e

    new-instance v6, Ljava/lang/RuntimeException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "unexpected result from encoder.dequeueOutputBuffer: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move/from16 v0, v41

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v6, v10}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_2e
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x15

    if-ge v6, v10, :cond_2f

    aget-object v36, v40, v41

    :goto_14
    if-nez v36, :cond_30

    new-instance v6, Ljava/lang/RuntimeException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "encoderOutputBuffer "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move/from16 v0, v41

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " was null"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v6, v10}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_2f
    move-object/from16 v0, v37

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/media/MediaCodec;->getOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v36

    goto :goto_14

    :cond_30
    move-object/from16 v0, v48

    iget v6, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    const/4 v10, 0x1

    if-le v6, v10, :cond_31

    move-object/from16 v0, v48

    iget v6, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v6, v6, 0x2

    if-nez v6, :cond_32

    const/4 v6, 0x0

    move-object/from16 v0, v57

    move/from16 v1, v85

    move-object/from16 v2, v36

    move-object/from16 v3, v48

    invoke-virtual {v0, v1, v2, v3, v6}, Lorg/telegram/messenger/video/MP4Builder;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;Z)Z

    move-result v6

    if-eqz v6, :cond_31

    const/4 v6, 0x0

    const/4 v10, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2, v6, v10}, Lorg/telegram/messenger/MediaController;->didWriteData(Lorg/telegram/messenger/MessageObject;Ljava/io/File;ZZ)V

    :cond_31
    :goto_15
    move-object/from16 v0, v48

    iget v6, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v6, v6, 0x4

    if-eqz v6, :cond_36

    const/16 v62, 0x1

    :goto_16
    const/4 v6, 0x0

    move-object/from16 v0, v37

    move/from16 v1, v41

    invoke-virtual {v0, v1, v6}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    goto/16 :goto_11

    :cond_32
    const/4 v6, -0x5

    move/from16 v0, v85

    if-ne v0, v6, :cond_31

    move-object/from16 v0, v48

    iget v6, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    new-array v0, v6, [B

    move-object/from16 v29, v0

    move-object/from16 v0, v48

    iget v6, v0, Landroid/media/MediaCodec$BufferInfo;->offset:I

    move-object/from16 v0, v48

    iget v10, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    add-int/2addr v6, v10

    move-object/from16 v0, v36

    invoke-virtual {v0, v6}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    move-object/from16 v0, v48

    iget v6, v0, Landroid/media/MediaCodec$BufferInfo;->offset:I

    move-object/from16 v0, v36

    invoke-virtual {v0, v6}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-object/from16 v0, v36

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    const/16 v75, 0x0

    const/16 v67, 0x0

    move-object/from16 v0, v48

    iget v6, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    add-int/lit8 v23, v6, -0x1

    :goto_17
    if-ltz v23, :cond_33

    const/4 v6, 0x3

    move/from16 v0, v23

    if-le v0, v6, :cond_33

    aget-byte v6, v29, v23

    const/4 v10, 0x1

    if-ne v6, v10, :cond_35

    add-int/lit8 v6, v23, -0x1

    aget-byte v6, v29, v6

    if-nez v6, :cond_35

    add-int/lit8 v6, v23, -0x2

    aget-byte v6, v29, v6

    if-nez v6, :cond_35

    add-int/lit8 v6, v23, -0x3

    aget-byte v6, v29, v6

    if-nez v6, :cond_35

    add-int/lit8 v6, v23, -0x3

    invoke-static {v6}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v75

    move-object/from16 v0, v48

    iget v6, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    add-int/lit8 v10, v23, -0x3

    sub-int/2addr v6, v10

    invoke-static {v6}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v67

    const/4 v6, 0x0

    add-int/lit8 v10, v23, -0x3

    move-object/from16 v0, v75

    move-object/from16 v1, v29

    invoke-virtual {v0, v1, v6, v10}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    move-result-object v6

    const/4 v10, 0x0

    invoke-virtual {v6, v10}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    add-int/lit8 v6, v23, -0x3

    move-object/from16 v0, v48

    iget v10, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    add-int/lit8 v11, v23, -0x3

    sub-int/2addr v10, v11

    move-object/from16 v0, v67

    move-object/from16 v1, v29

    invoke-virtual {v0, v1, v6, v10}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    move-result-object v6

    const/4 v10, 0x0

    invoke-virtual {v6, v10}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    :cond_33
    const-string/jumbo v6, "video/avc"

    move/from16 v0, v72

    move/from16 v1, v70

    invoke-static {v6, v0, v1}, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v59

    if-eqz v75, :cond_34

    if-eqz v67, :cond_34

    const-string/jumbo v6, "csd-0"

    move-object/from16 v0, v59

    move-object/from16 v1, v75

    invoke-virtual {v0, v6, v1}, Landroid/media/MediaFormat;->setByteBuffer(Ljava/lang/String;Ljava/nio/ByteBuffer;)V

    const-string/jumbo v6, "csd-1"

    move-object/from16 v0, v59

    move-object/from16 v1, v67

    invoke-virtual {v0, v6, v1}, Landroid/media/MediaFormat;->setByteBuffer(Ljava/lang/String;Ljava/nio/ByteBuffer;)V

    :cond_34
    const/4 v6, 0x0

    move-object/from16 v0, v57

    move-object/from16 v1, v59

    invoke-virtual {v0, v1, v6}, Lorg/telegram/messenger/video/MP4Builder;->addTrack(Landroid/media/MediaFormat;Z)I

    move-result v85

    goto/16 :goto_15

    :cond_35
    add-int/lit8 v23, v23, -0x1

    goto/16 :goto_17

    :cond_36
    const/16 v62, 0x0

    goto/16 :goto_16

    :cond_37
    const/4 v6, -0x3

    move/from16 v0, v33

    if-eq v0, v6, :cond_18

    const/4 v6, -0x2

    move/from16 v0, v33

    if-ne v0, v6, :cond_38

    invoke-virtual {v4}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v59

    const-string/jumbo v6, "tmessages"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "newFormat = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, v59

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v6, v10}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_10

    :cond_38
    if-gez v33, :cond_39

    new-instance v6, Ljava/lang/RuntimeException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "unexpected result from decoder.dequeueOutputBuffer: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move/from16 v0, v33

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v6, v10}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_39
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x12

    if-lt v6, v10, :cond_3e

    move-object/from16 v0, v48

    iget v6, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-eqz v6, :cond_3d

    const/16 v34, 0x1

    :goto_18
    const-wide/16 v10, 0x0

    cmp-long v6, v18, v10

    if-lez v6, :cond_3a

    move-object/from16 v0, v48

    iget-wide v10, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    cmp-long v6, v10, v18

    if-ltz v6, :cond_3a

    const/16 v50, 0x1

    const/16 v30, 0x1

    const/16 v34, 0x0

    move-object/from16 v0, v48

    iget v6, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    or-int/lit8 v6, v6, 0x4

    move-object/from16 v0, v48

    iput v6, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    :cond_3a
    const-wide/16 v10, 0x0

    cmp-long v6, v76, v10

    if-lez v6, :cond_3b

    const-wide/16 v10, -0x1

    cmp-long v6, v88, v10

    if-nez v6, :cond_3b

    move-object/from16 v0, v48

    iget-wide v10, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    cmp-long v6, v10, v76

    if-gez v6, :cond_41

    const/16 v34, 0x0

    const-string/jumbo v6, "tmessages"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "drop frame startTime = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-wide/from16 v0, v76

    invoke-virtual {v10, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " present time = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, v48

    iget-wide v12, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-virtual {v10, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v6, v10}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3b
    :goto_19
    move/from16 v0, v33

    move/from16 v1, v34

    invoke-virtual {v4, v0, v1}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0

    if-eqz v34, :cond_3c

    const/16 v44, 0x0

    :try_start_b
    invoke-virtual/range {v64 .. v64}, Lorg/telegram/messenger/video/OutputSurface;->awaitNewImage()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_1

    :goto_1a
    if-nez v44, :cond_3c

    :try_start_c
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x12

    if-lt v6, v10, :cond_42

    const/4 v6, 0x0

    move-object/from16 v0, v64

    invoke-virtual {v0, v6}, Lorg/telegram/messenger/video/OutputSurface;->drawImage(Z)V

    move-object/from16 v0, v48

    iget-wide v10, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    const-wide/16 v12, 0x3e8

    mul-long/2addr v10, v12

    move-object/from16 v0, v53

    invoke-virtual {v0, v10, v11}, Lorg/telegram/messenger/video/InputSurface;->setPresentationTime(J)V

    invoke-virtual/range {v53 .. v53}, Lorg/telegram/messenger/video/InputSurface;->swapBuffers()Z

    :cond_3c
    :goto_1b
    move-object/from16 v0, v48

    iget v6, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v6, v6, 0x4

    if-eqz v6, :cond_18

    const/16 v32, 0x0

    const-string/jumbo v6, "tmessages"

    const-string/jumbo v10, "decoder stream end"

    invoke-static {v6, v10}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x12

    if-lt v6, v10, :cond_44

    invoke-virtual/range {v37 .. v37}, Landroid/media/MediaCodec;->signalEndOfInputStream()V

    goto/16 :goto_10

    :cond_3d
    const/16 v34, 0x0

    goto/16 :goto_18

    :cond_3e
    move-object/from16 v0, v48

    iget v6, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-nez v6, :cond_3f

    move-object/from16 v0, v48

    iget-wide v10, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    const-wide/16 v12, 0x0

    cmp-long v6, v10, v12

    if-eqz v6, :cond_40

    :cond_3f
    const/16 v34, 0x1

    :goto_1c
    goto/16 :goto_18

    :cond_40
    const/16 v34, 0x0

    goto :goto_1c

    :cond_41
    move-object/from16 v0, v48

    iget-wide v0, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    move-wide/from16 v88, v0

    goto :goto_19

    :catch_1
    move-exception v35

    const/16 v44, 0x1

    const-string/jumbo v6, "tmessages"

    move-object/from16 v0, v35

    invoke-static {v6, v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1a

    :cond_42
    const-wide/16 v10, 0x9c4

    move-object/from16 v0, v37

    invoke-virtual {v0, v10, v11}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v5

    if-ltz v5, :cond_43

    const/4 v6, 0x1

    move-object/from16 v0, v64

    invoke-virtual {v0, v6}, Lorg/telegram/messenger/video/OutputSurface;->drawImage(Z)V

    invoke-virtual/range {v64 .. v64}, Lorg/telegram/messenger/video/OutputSurface;->getFrame()Ljava/nio/ByteBuffer;

    move-result-object v8

    aget-object v9, v38, v5

    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    move/from16 v10, v28

    move/from16 v11, v72

    move/from16 v12, v70

    move/from16 v13, v66

    move/from16 v14, v78

    invoke-static/range {v8 .. v14}, Lorg/telegram/messenger/Utilities;->convertVideoFrame(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;IIIII)I

    const/4 v12, 0x0

    move-object/from16 v0, v48

    iget-wide v14, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    const/16 v16, 0x0

    move-object/from16 v10, v37

    move v11, v5

    move/from16 v13, v25

    invoke-virtual/range {v10 .. v16}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    goto/16 :goto_1b

    :cond_43
    const-string/jumbo v6, "tmessages"

    const-string/jumbo v10, "input buffer not available"

    invoke-static {v6, v10}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1b

    :cond_44
    const-wide/16 v10, 0x9c4

    move-object/from16 v0, v37

    invoke-virtual {v0, v10, v11}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v5

    if-ltz v5, :cond_18

    const/4 v12, 0x0

    const/4 v13, 0x1

    move-object/from16 v0, v48

    iget-wide v14, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    const/16 v16, 0x4

    move-object/from16 v10, v37

    move v11, v5

    invoke-virtual/range {v10 .. v16}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_0

    goto/16 :goto_10

    :cond_45
    const-wide/16 v10, -0x1

    cmp-long v6, v88, v10

    if-eqz v6, :cond_4b

    move-wide/from16 v16, v88

    goto/16 :goto_3

    :cond_46
    const/16 v21, 0x0

    move-object/from16 v11, p0

    move-object/from16 v12, p1

    move-object/from16 v13, v46

    move-object/from16 v14, v57

    move-object/from16 v15, v48

    move-wide/from16 v16, v76

    :try_start_d
    invoke-direct/range {v11 .. v21}, Lorg/telegram/messenger/MediaController;->readAndWriteTrack(Lorg/telegram/messenger/MessageObject;Landroid/media/MediaExtractor;Lorg/telegram/messenger/video/MP4Builder;Landroid/media/MediaCodec$BufferInfo;JJLjava/io/File;Z)J
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_6

    move-result-wide v88

    const-wide/16 v10, -0x1

    cmp-long v6, v88, v10

    if-eqz v6, :cond_4a

    move-wide/from16 v16, v88

    goto/16 :goto_4

    :catch_2
    move-exception v35

    const-string/jumbo v6, "tmessages"

    move-object/from16 v0, v35

    invoke-static {v6, v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_5

    :catch_3
    move-exception v35

    move-wide/from16 v16, v86

    :goto_1d
    const/16 v43, 0x1

    :try_start_e
    const-string/jumbo v6, "tmessages"

    move-object/from16 v0, v35

    invoke-static {v6, v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    if-eqz v45, :cond_47

    invoke-virtual/range {v45 .. v45}, Landroid/media/MediaExtractor;->release()V

    :cond_47
    if-eqz v57, :cond_48

    const/4 v6, 0x0

    :try_start_f
    move-object/from16 v0, v57

    invoke-virtual {v0, v6}, Lorg/telegram/messenger/video/MP4Builder;->finishMovie(Z)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_4

    :cond_48
    :goto_1e
    const-string/jumbo v6, "tmessages"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "time = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    sub-long v12, v12, v80

    invoke-virtual {v10, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v6, v10}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    :catch_4
    move-exception v35

    const-string/jumbo v6, "tmessages"

    move-object/from16 v0, v35

    invoke-static {v6, v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1e

    :catch_5
    move-exception v35

    const-string/jumbo v10, "tmessages"

    move-object/from16 v0, v35

    invoke-static {v10, v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_13

    :cond_49
    invoke-interface/range {v68 .. v68}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    const-string/jumbo v10, "isPreviousOk"

    const/4 v11, 0x1

    invoke-interface {v6, v10, v11}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->commit()Z

    const/4 v6, 0x1

    const/4 v10, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2, v6, v10}, Lorg/telegram/messenger/MediaController;->didWriteData(Lorg/telegram/messenger/MessageObject;Ljava/io/File;ZZ)V

    const/4 v6, 0x0

    goto/16 :goto_1

    :catchall_1
    move-exception v6

    move-wide/from16 v16, v86

    goto/16 :goto_12

    :catchall_2
    move-exception v6

    move-object/from16 v45, v46

    goto/16 :goto_12

    :catchall_3
    move-exception v6

    goto/16 :goto_12

    :catch_6
    move-exception v35

    move-object/from16 v45, v46

    move-wide/from16 v16, v86

    goto :goto_1d

    :catch_7
    move-exception v35

    move-object/from16 v45, v46

    goto/16 :goto_1d

    :catch_8
    move-exception v35

    move-object/from16 v53, v54

    goto/16 :goto_2

    :cond_4a
    move-wide/from16 v16, v86

    goto/16 :goto_4

    :cond_4b
    move-wide/from16 v16, v86

    goto/16 :goto_3
.end method

.method public static copyFileToCache(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;
    .locals 15

    const/4 v5, 0x0

    const/4 v8, 0x0

    :try_start_0
    invoke-static {p0}, Lorg/telegram/messenger/MediaController;->getFileName(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_0

    sget v4, Lorg/telegram/messenger/UserConfig;->lastLocalId:I

    sget v10, Lorg/telegram/messenger/UserConfig;->lastLocalId:I

    add-int/lit8 v10, v10, -0x1

    sput v10, Lorg/telegram/messenger/UserConfig;->lastLocalId:I

    const/4 v10, 0x0

    invoke-static {v10}, Lorg/telegram/messenger/UserConfig;->saveConfig(Z)V

    sget-object v10, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v11, "%d.%s"

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x1

    aput-object p1, v12, v13

    invoke-static {v10, v11, v12}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    :cond_0
    sget-object v10, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    invoke-virtual {v10, p0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v5

    new-instance v3, Ljava/io/File;

    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v10

    const/4 v11, 0x4

    invoke-virtual {v10, v11}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object v10

    invoke-direct {v3, v10, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v9, Ljava/io/FileOutputStream;

    invoke-direct {v9, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_7

    const/16 v10, 0x5000

    :try_start_1
    new-array v0, v10, [B

    :goto_0
    invoke-virtual {v5, v0}, Ljava/io/InputStream;->read([B)I

    move-result v6

    const/4 v10, -0x1

    if-eq v6, v10, :cond_3

    const/4 v10, 0x0

    invoke-virtual {v9, v0, v10, v6}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    move-object v8, v9

    :goto_1
    :try_start_2
    const-string/jumbo v10, "tmessages"

    invoke-static {v10, v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v5, :cond_1

    :try_start_3
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    :cond_1
    :goto_2
    if-eqz v8, :cond_2

    :try_start_4
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    :cond_2
    :goto_3
    const/4 v10, 0x0

    :goto_4
    return-object v10

    :cond_3
    :try_start_5
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    move-result-object v10

    if-eqz v5, :cond_4

    :try_start_6
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    :cond_4
    :goto_5
    if-eqz v9, :cond_5

    :try_start_7
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    :cond_5
    :goto_6
    move-object v8, v9

    goto :goto_4

    :catch_1
    move-exception v2

    const-string/jumbo v11, "tmessages"

    invoke-static {v11, v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5

    :catch_2
    move-exception v2

    const-string/jumbo v11, "tmessages"

    invoke-static {v11, v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_6

    :catch_3
    move-exception v2

    const-string/jumbo v10, "tmessages"

    invoke-static {v10, v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :catch_4
    move-exception v2

    const-string/jumbo v10, "tmessages"

    invoke-static {v10, v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    :catchall_0
    move-exception v10

    :goto_7
    if-eqz v5, :cond_6

    :try_start_8
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5

    :cond_6
    :goto_8
    if-eqz v8, :cond_7

    :try_start_9
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_6

    :cond_7
    :goto_9
    throw v10

    :catch_5
    move-exception v2

    const-string/jumbo v11, "tmessages"

    invoke-static {v11, v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_8

    :catch_6
    move-exception v2

    const-string/jumbo v11, "tmessages"

    invoke-static {v11, v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_9

    :catchall_1
    move-exception v10

    move-object v8, v9

    goto :goto_7

    :catch_7
    move-exception v1

    goto :goto_1
.end method

.method private didWriteData(Lorg/telegram/messenger/MessageObject;Ljava/io/File;ZZ)V
    .locals 7

    iget-boolean v5, p0, Lorg/telegram/messenger/MediaController;->videoConvertFirstWrite:Z

    if-eqz v5, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/messenger/MediaController;->videoConvertFirstWrite:Z

    :cond_0
    new-instance v0, Lorg/telegram/messenger/MediaController$25;

    move-object v1, p0

    move v2, p4

    move-object v3, p1

    move-object v4, p2

    move v6, p3

    invoke-direct/range {v0 .. v6}, Lorg/telegram/messenger/MediaController$25;-><init>(Lorg/telegram/messenger/MediaController;ZLorg/telegram/messenger/MessageObject;Ljava/io/File;ZZ)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private getCurrentDownloadMask()I
    .locals 1

    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->isConnectedToWiFi()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/messenger/MediaController;->wifiDownloadMask:I

    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->isRoaming()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lorg/telegram/messenger/MediaController;->roamingDownloadMask:I

    goto :goto_0

    :cond_1
    iget v0, p0, Lorg/telegram/messenger/MediaController;->mobileDataDownloadMask:I

    goto :goto_0
.end method

.method public static getFileName(Landroid/net/Uri;)Ljava/lang/String;
    .locals 10

    const/4 v9, 0x0

    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "content"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v6, 0x0

    :try_start_0
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v3, "_display_name"

    aput-object v3, v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "_display_name"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    :cond_0
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    :goto_0
    if-nez v9, :cond_2

    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v9

    const/16 v0, 0x2f

    invoke-virtual {v9, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v7

    const/4 v0, -0x1

    if-eq v7, v0, :cond_2

    add-int/lit8 v0, v7, 0x1

    invoke-virtual {v9, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    :cond_2
    return-object v9

    :catch_0
    move-exception v8

    :try_start_1
    const-string/jumbo v0, "tmessages"

    invoke-static {v0, v8}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method public static getInstance()Lorg/telegram/messenger/MediaController;
    .locals 4

    sget-object v0, Lorg/telegram/messenger/MediaController;->Instance:Lorg/telegram/messenger/MediaController;

    if-nez v0, :cond_1

    const-class v3, Lorg/telegram/messenger/MediaController;

    monitor-enter v3

    :try_start_0
    sget-object v0, Lorg/telegram/messenger/MediaController;->Instance:Lorg/telegram/messenger/MediaController;

    if-nez v0, :cond_0

    new-instance v1, Lorg/telegram/messenger/MediaController;

    invoke-direct {v1}, Lorg/telegram/messenger/MediaController;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    sput-object v1, Lorg/telegram/messenger/MediaController;->Instance:Lorg/telegram/messenger/MediaController;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v0, v1

    :cond_0
    :try_start_2
    monitor-exit v3

    :cond_1
    return-object v0

    :catchall_0
    move-exception v2

    :goto_0
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    :catchall_1
    move-exception v2

    move-object v0, v1

    goto :goto_0
.end method

.method private native getTotalPcmDuration()J
.end method

.method public static isGif(Landroid/net/Uri;)Z
    .locals 9

    const/4 v5, 0x0

    const/4 v8, 0x3

    const/4 v3, 0x0

    :try_start_0
    sget-object v6, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-virtual {v6, p0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v3

    const/4 v6, 0x3

    new-array v2, v6, [B

    const/4 v6, 0x0

    const/4 v7, 0x3

    invoke-virtual {v3, v2, v6, v7}, Ljava/io/InputStream;->read([BII)I

    move-result v6

    if-ne v6, v8, :cond_1

    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v2}, Ljava/lang/String;-><init>([B)V

    if-eqz v4, :cond_1

    const-string/jumbo v6, "gif"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result v6

    if-eqz v6, :cond_1

    const/4 v5, 0x1

    if-eqz v3, :cond_0

    :try_start_1
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_0
    :goto_0
    return v5

    :catch_0
    move-exception v1

    const-string/jumbo v6, "tmessages"

    invoke-static {v6, v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    if-eqz v3, :cond_0

    :try_start_2
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v1

    const-string/jumbo v6, "tmessages"

    invoke-static {v6, v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_2
    move-exception v0

    :try_start_3
    const-string/jumbo v6, "tmessages"

    invoke-static {v6, v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v3, :cond_0

    :try_start_4
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_0

    :catch_3
    move-exception v1

    const-string/jumbo v6, "tmessages"

    invoke-static {v6, v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catchall_0
    move-exception v5

    if-eqz v3, :cond_2

    :try_start_5
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    :cond_2
    :goto_1
    throw v5

    :catch_4
    move-exception v1

    const-string/jumbo v6, "tmessages"

    invoke-static {v6, v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method private isNearToSensor(F)Z
    .locals 1

    const/high16 v0, 0x40a0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->proximitySensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getMaximumRange()F

    move-result v0

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private native isOpusFile(Ljava/lang/String;)I
.end method

.method private static isRecognizedFormat(I)Z
    .locals 1

    sparse-switch p0, :sswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_0
        0x14 -> :sswitch_0
        0x15 -> :sswitch_0
        0x27 -> :sswitch_0
        0x7f000100 -> :sswitch_0
    .end sparse-switch
.end method

.method public static isWebp(Landroid/net/Uri;)Z
    .locals 9

    const/4 v5, 0x0

    const/16 v8, 0xc

    const/4 v3, 0x0

    :try_start_0
    sget-object v6, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-virtual {v6, p0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v3

    const/16 v6, 0xc

    new-array v2, v6, [B

    const/4 v6, 0x0

    const/16 v7, 0xc

    invoke-virtual {v3, v2, v6, v7}, Ljava/io/InputStream;->read([BII)I

    move-result v6

    if-ne v6, v8, :cond_1

    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v2}, Ljava/lang/String;-><init>([B)V

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v6, "riff"

    invoke-virtual {v4, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    const-string/jumbo v6, "webp"

    invoke-virtual {v4, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result v6

    if-eqz v6, :cond_1

    const/4 v5, 0x1

    if-eqz v3, :cond_0

    :try_start_1
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_0
    :goto_0
    return v5

    :catch_0
    move-exception v1

    const-string/jumbo v6, "tmessages"

    invoke-static {v6, v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    if-eqz v3, :cond_0

    :try_start_2
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v1

    const-string/jumbo v6, "tmessages"

    invoke-static {v6, v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_2
    move-exception v0

    :try_start_3
    const-string/jumbo v6, "tmessages"

    invoke-static {v6, v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v3, :cond_0

    :try_start_4
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_0

    :catch_3
    move-exception v1

    const-string/jumbo v6, "tmessages"

    invoke-static {v6, v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catchall_0
    move-exception v5

    if-eqz v3, :cond_2

    :try_start_5
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    :cond_2
    :goto_1
    throw v5

    :catch_4
    move-exception v1

    const-string/jumbo v6, "tmessages"

    invoke-static {v6, v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public static loadGalleryPhotosAlbums(I)V
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lorg/telegram/messenger/MediaController$23;

    invoke-direct {v1, p0}, Lorg/telegram/messenger/MediaController$23;-><init>(I)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private native openOpusFile(Ljava/lang/String;)I
.end method

.method private playNextMessage(Z)V
    .locals 8

    const/4 v4, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    iget-boolean v2, p0, Lorg/telegram/messenger/MediaController;->shuffleMusic:Z

    if-eqz v2, :cond_1

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->shuffledPlaylist:Ljava/util/ArrayList;

    :goto_0
    if-eqz p1, :cond_2

    iget v2, p0, Lorg/telegram/messenger/MediaController;->repeatMode:I

    if-ne v2, v4, :cond_2

    iget-boolean v2, p0, Lorg/telegram/messenger/MediaController;->forceLoopCurrentPlaylist:Z

    if-nez v2, :cond_2

    invoke-virtual {p0, v6, v6}, Lorg/telegram/messenger/MediaController;->cleanupPlayer(ZZ)V

    iget v2, p0, Lorg/telegram/messenger/MediaController;->currentPlaylistNum:I

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/MessageObject;

    invoke-virtual {p0, v2}, Lorg/telegram/messenger/MediaController;->playAudio(Lorg/telegram/messenger/MessageObject;)Z

    :cond_0
    :goto_1
    return-void

    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->playlist:Ljava/util/ArrayList;

    goto :goto_0

    :cond_2
    iget v2, p0, Lorg/telegram/messenger/MediaController;->currentPlaylistNum:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/telegram/messenger/MediaController;->currentPlaylistNum:I

    iget v2, p0, Lorg/telegram/messenger/MediaController;->currentPlaylistNum:I

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v2, v3, :cond_6

    iput v6, p0, Lorg/telegram/messenger/MediaController;->currentPlaylistNum:I

    if-eqz p1, :cond_6

    iget v2, p0, Lorg/telegram/messenger/MediaController;->repeatMode:I

    if-nez v2, :cond_6

    iget-boolean v2, p0, Lorg/telegram/messenger/MediaController;->forceLoopCurrentPlaylist:Z

    if-nez v2, :cond_6

    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->audioPlayer:Landroid/media/MediaPlayer;

    if-nez v2, :cond_3

    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->audioTrackPlayer:Landroid/media/AudioTrack;

    if-eqz v2, :cond_0

    :cond_3
    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->audioPlayer:Landroid/media/MediaPlayer;

    if-eqz v2, :cond_5

    :try_start_0
    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->audioPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->reset()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    :try_start_1
    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->audioPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->stop()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_3
    :try_start_2
    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->audioPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->release()V

    const/4 v2, 0x0

    iput-object v2, p0, Lorg/telegram/messenger/MediaController;->audioPlayer:Landroid/media/MediaPlayer;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :cond_4
    :goto_4
    invoke-direct {p0}, Lorg/telegram/messenger/MediaController;->stopProgressTimer()V

    iput v6, p0, Lorg/telegram/messenger/MediaController;->lastProgress:I

    iput v6, p0, Lorg/telegram/messenger/MediaController;->buffersWrited:I

    iput-boolean v7, p0, Lorg/telegram/messenger/MediaController;->isPaused:Z

    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    const/4 v3, 0x0

    iput v3, v2, Lorg/telegram/messenger/MessageObject;->audioProgress:F

    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    iput v6, v2, Lorg/telegram/messenger/MessageObject;->audioProgressSec:I

    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/NotificationCenter;->audioProgressDidChanged:I

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v5}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-virtual {v2, v3, v4}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/NotificationCenter;->audioPlayStateChanged:I

    new-array v4, v7, [Ljava/lang/Object;

    iget-object v5, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v5}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    goto/16 :goto_1

    :catch_0
    move-exception v1

    const-string/jumbo v2, "tmessages"

    invoke-static {v2, v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :catch_1
    move-exception v1

    const-string/jumbo v2, "tmessages"

    invoke-static {v2, v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    :catch_2
    move-exception v1

    const-string/jumbo v2, "tmessages"

    invoke-static {v2, v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4

    :cond_5
    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->audioTrackPlayer:Landroid/media/AudioTrack;

    if-eqz v2, :cond_4

    iget-object v3, p0, Lorg/telegram/messenger/MediaController;->playerObjectSync:Ljava/lang/Object;

    monitor-enter v3

    :try_start_3
    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->audioTrackPlayer:Landroid/media/AudioTrack;

    invoke-virtual {v2}, Landroid/media/AudioTrack;->pause()V

    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->audioTrackPlayer:Landroid/media/AudioTrack;

    invoke-virtual {v2}, Landroid/media/AudioTrack;->flush()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    :goto_5
    :try_start_4
    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->audioTrackPlayer:Landroid/media/AudioTrack;

    invoke-virtual {v2}, Landroid/media/AudioTrack;->release()V

    const/4 v2, 0x0

    iput-object v2, p0, Lorg/telegram/messenger/MediaController;->audioTrackPlayer:Landroid/media/AudioTrack;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    :goto_6
    :try_start_5
    monitor-exit v3

    goto :goto_4

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v2

    :catch_3
    move-exception v1

    :try_start_6
    const-string/jumbo v2, "tmessages"

    invoke-static {v2, v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5

    :catch_4
    move-exception v1

    const-string/jumbo v2, "tmessages"

    invoke-static {v2, v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_6

    :cond_6
    iget v2, p0, Lorg/telegram/messenger/MediaController;->currentPlaylistNum:I

    if-ltz v2, :cond_0

    iget v2, p0, Lorg/telegram/messenger/MediaController;->currentPlaylistNum:I

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    iput-boolean v7, p0, Lorg/telegram/messenger/MediaController;->playMusicAgain:Z

    iget v2, p0, Lorg/telegram/messenger/MediaController;->currentPlaylistNum:I

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/MessageObject;

    invoke-virtual {p0, v2}, Lorg/telegram/messenger/MediaController;->playAudio(Lorg/telegram/messenger/MessageObject;)Z

    goto/16 :goto_1
.end method

.method private processLaterArrays()V
    .locals 5

    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->addLaterArray:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/MediaController$FileDownloadProgressListener;

    invoke-virtual {p0, v2, v3}, Lorg/telegram/messenger/MediaController;->addLoadingFileObserver(Ljava/lang/String;Lorg/telegram/messenger/MediaController$FileDownloadProgressListener;)V

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->addLaterArray:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->deleteLaterArray:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/MediaController$FileDownloadProgressListener;

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/MediaController;->removeLoadingFileObserver(Lorg/telegram/messenger/MediaController$FileDownloadProgressListener;)V

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->deleteLaterArray:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method private readAndWriteTrack(Lorg/telegram/messenger/MessageObject;Landroid/media/MediaExtractor;Lorg/telegram/messenger/video/MP4Builder;Landroid/media/MediaCodec$BufferInfo;JJLjava/io/File;Z)J
    .locals 21
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p10

    invoke-direct {v0, v1, v2}, Lorg/telegram/messenger/MediaController;->selectTrack(Landroid/media/MediaExtractor;Z)I

    move-result v17

    if-ltz v17, :cond_c

    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/media/MediaExtractor;->selectTrack(I)V

    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v16

    move-object/from16 v0, p3

    move-object/from16 v1, v16

    move/from16 v2, p10

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/video/MP4Builder;->addTrack(Landroid/media/MediaFormat;Z)I

    move-result v13

    const-string/jumbo v18, "max-input-size"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v12

    const/4 v9, 0x0

    const-wide/16 v18, 0x0

    cmp-long v18, p5, v18

    if-lez v18, :cond_6

    const/16 v18, 0x0

    move-object/from16 v0, p2

    move-wide/from16 v1, p5

    move/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/MediaExtractor;->seekTo(JI)V

    :goto_0
    invoke-static {v12}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v6

    const-wide/16 v14, -0x1

    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/MediaController;->checkConversionCanceled()V

    const-wide/16 v10, -0x64

    :cond_0
    :goto_1
    if-nez v9, :cond_b

    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/MediaController;->checkConversionCanceled()V

    const/4 v7, 0x0

    invoke-virtual/range {p2 .. p2}, Landroid/media/MediaExtractor;->getSampleTrackIndex()I

    move-result v8

    move/from16 v0, v17

    if-ne v8, v0, :cond_9

    const/16 v18, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v18

    invoke-virtual {v0, v6, v1}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p4

    iput v0, v1, Landroid/media/MediaCodec$BufferInfo;->size:I

    move-object/from16 v0, p4

    iget v0, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    move/from16 v18, v0

    if-ltz v18, :cond_7

    invoke-virtual/range {p2 .. p2}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v18

    move-wide/from16 v0, v18

    move-object/from16 v2, p4

    iput-wide v0, v2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    :goto_2
    move-object/from16 v0, p4

    iget v0, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    move/from16 v18, v0

    if-lez v18, :cond_4

    if-nez v7, :cond_4

    const-wide/16 v18, 0x0

    cmp-long v18, p5, v18

    if-lez v18, :cond_1

    const-wide/16 v18, -0x1

    cmp-long v18, v14, v18

    if-nez v18, :cond_1

    move-object/from16 v0, p4

    iget-wide v14, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    :cond_1
    const-wide/16 v18, 0x0

    cmp-long v18, p7, v18

    if-ltz v18, :cond_2

    move-object/from16 v0, p4

    iget-wide v0, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    move-wide/from16 v18, v0

    cmp-long v18, v18, p7

    if-gez v18, :cond_8

    :cond_2
    move-object/from16 v0, p4

    iget-wide v0, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    move-wide/from16 v18, v0

    cmp-long v18, v18, v10

    if-lez v18, :cond_3

    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p4

    iput v0, v1, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual/range {p2 .. p2}, Landroid/media/MediaExtractor;->getSampleFlags()I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p4

    iput v0, v1, Landroid/media/MediaCodec$BufferInfo;->flags:I

    move-object/from16 v0, p3

    move-object/from16 v1, p4

    move/from16 v2, p10

    invoke-virtual {v0, v13, v6, v1, v2}, Lorg/telegram/messenger/video/MP4Builder;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;Z)Z

    move-result v18

    if-eqz v18, :cond_3

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p9

    move/from16 v3, v18

    move/from16 v4, v19

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/telegram/messenger/MediaController;->didWriteData(Lorg/telegram/messenger/MessageObject;Ljava/io/File;ZZ)V

    :cond_3
    move-object/from16 v0, p4

    iget-wide v10, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    :cond_4
    :goto_3
    if-nez v7, :cond_5

    invoke-virtual/range {p2 .. p2}, Landroid/media/MediaExtractor;->advance()Z

    :cond_5
    :goto_4
    if-eqz v7, :cond_0

    const/4 v9, 0x1

    goto/16 :goto_1

    :cond_6
    const-wide/16 v18, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, p2

    move-wide/from16 v1, v18

    move/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/MediaExtractor;->seekTo(JI)V

    goto/16 :goto_0

    :cond_7
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p4

    iput v0, v1, Landroid/media/MediaCodec$BufferInfo;->size:I

    const/4 v7, 0x1

    goto/16 :goto_2

    :cond_8
    const/4 v7, 0x1

    goto :goto_3

    :cond_9
    const/16 v18, -0x1

    move/from16 v0, v18

    if-ne v8, v0, :cond_a

    const/4 v7, 0x1

    goto :goto_4

    :cond_a
    invoke-virtual/range {p2 .. p2}, Landroid/media/MediaExtractor;->advance()Z

    goto :goto_4

    :cond_b
    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/media/MediaExtractor;->unselectTrack(I)V

    :goto_5
    return-wide v14

    :cond_c
    const-wide/16 v14, -0x1

    goto :goto_5
.end method

.method private native readOpusFile(Ljava/nio/ByteBuffer;I[I)V
.end method

.method public static saveFile(Ljava/lang/String;Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V
    .locals 12

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v8, 0x0

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_2

    new-instance v8, Ljava/io/File;

    invoke-direct {v8, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v8, 0x0

    :cond_2
    if-eqz v8, :cond_0

    move-object v3, v8

    const/4 v0, 0x1

    new-array v4, v0, [Z

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v9, 0x0

    if-eqz p1, :cond_3

    :try_start_0
    new-instance v10, Landroid/app/ProgressDialog;

    invoke-direct {v10, p1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    const-string/jumbo v0, "Loading"

    const v1, 0x7f080289

    invoke-static {v0, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    const/4 v0, 0x0

    invoke-virtual {v10, v0}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    const/4 v0, 0x1

    invoke-virtual {v10, v0}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    const/4 v0, 0x1

    invoke-virtual {v10, v0}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    const/16 v0, 0x64

    invoke-virtual {v10, v0}, Landroid/app/ProgressDialog;->setMax(I)V

    new-instance v0, Lorg/telegram/messenger/MediaController$21;

    invoke-direct {v0, v4}, Lorg/telegram/messenger/MediaController$21;-><init>([Z)V

    invoke-virtual {v10, v0}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    invoke-virtual {v10}, Landroid/app/ProgressDialog;->show()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v9, v10

    :cond_3
    :goto_1
    move-object v5, v9

    new-instance v11, Ljava/lang/Thread;

    new-instance v0, Lorg/telegram/messenger/MediaController$22;

    move v1, p2

    move-object v2, p3

    move-object/from16 v6, p4

    invoke-direct/range {v0 .. v6}, Lorg/telegram/messenger/MediaController$22;-><init>(ILjava/lang/String;Ljava/io/File;[ZLandroid/app/ProgressDialog;Ljava/lang/String;)V

    invoke-direct {v11, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v11}, Ljava/lang/Thread;->start()V

    goto :goto_0

    :catch_0
    move-exception v7

    :goto_2
    const-string/jumbo v0, "tmessages"

    invoke-static {v0, v7}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :catch_1
    move-exception v7

    move-object v9, v10

    goto :goto_2
.end method

.method private native seekOpusFile(F)I
.end method

.method private seekOpusPlayer(F)V
    .locals 2

    const/high16 v0, 0x3f80

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-boolean v0, p0, Lorg/telegram/messenger/MediaController;->isPaused:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->audioTrackPlayer:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->pause()V

    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->audioTrackPlayer:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->flush()V

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->fileDecodingQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/MediaController$12;

    invoke-direct {v1, p0, p1}, Lorg/telegram/messenger/MediaController$12;-><init>(Lorg/telegram/messenger/MediaController;F)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public static selectCodec(Ljava/lang/String;)Landroid/media/MediaCodecInfo;
    .locals 11
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    invoke-static {}, Landroid/media/MediaCodecList;->getCodecCount()I

    move-result v4

    const/4 v2, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v4, :cond_4

    invoke-static {v1}, Landroid/media/MediaCodecList;->getCodecInfoAt(I)Landroid/media/MediaCodecInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaCodecInfo;->isEncoder()Z

    move-result v7

    if-nez v7, :cond_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroid/media/MediaCodecInfo;->getSupportedTypes()[Ljava/lang/String;

    move-result-object v6

    array-length v8, v6

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v8, :cond_0

    aget-object v5, v6, v7

    invoke-virtual {v5, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    move-object v2, v0

    invoke-virtual {v2}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "OMX.SEC.avc.enc"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    move-object v3, v2

    :goto_2
    return-object v3

    :cond_2
    invoke-virtual {v2}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "OMX.SEC.AVC.Encoder"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    move-object v3, v2

    goto :goto_2

    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_4
    move-object v3, v2

    goto :goto_2
.end method

.method public static selectColorFormat(Landroid/media/MediaCodecInfo;Ljava/lang/String;)I
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    invoke-virtual {p0, p1}, Landroid/media/MediaCodecInfo;->getCapabilitiesForType(Ljava/lang/String;)Landroid/media/MediaCodecInfo$CodecCapabilities;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v2, 0x0

    :goto_0
    iget-object v4, v0, Landroid/media/MediaCodecInfo$CodecCapabilities;->colorFormats:[I

    array-length v4, v4

    if-ge v2, v4, :cond_2

    iget-object v4, v0, Landroid/media/MediaCodecInfo$CodecCapabilities;->colorFormats:[I

    aget v1, v4, v2

    invoke-static {v1}, Lorg/telegram/messenger/MediaController;->isRecognizedFormat(I)Z

    move-result v4

    if-eqz v4, :cond_1

    move v3, v1

    invoke-virtual {p0}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "OMX.SEC.AVC.Encoder"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v4, 0x13

    if-eq v1, v4, :cond_1

    :cond_0
    :goto_1
    return v1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    move v1, v3

    goto :goto_1
.end method

.method private selectTrack(Landroid/media/MediaExtractor;Z)I
    .locals 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    invoke-virtual {p1}, Landroid/media/MediaExtractor;->getTrackCount()I

    move-result v3

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_3

    invoke-virtual {p1, v1}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v0

    const-string/jumbo v4, "mime"

    invoke-virtual {v0, v4}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz p2, :cond_1

    const-string/jumbo v4, "audio/"

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_0
    :goto_1
    return v1

    :cond_1
    const-string/jumbo v4, "video/"

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    const/4 v1, -0x5

    goto :goto_1
.end method

.method private setPlayerVolume()V
    .locals 4

    :try_start_0
    iget v2, p0, Lorg/telegram/messenger/MediaController;->audioFocus:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    const/high16 v1, 0x3f80

    :goto_0
    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->audioPlayer:Landroid/media/MediaPlayer;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->audioPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2, v1, v1}, Landroid/media/MediaPlayer;->setVolume(FF)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    const v1, 0x3e4ccccd

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->audioTrackPlayer:Landroid/media/AudioTrack;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->audioTrackPlayer:Landroid/media/AudioTrack;

    invoke-virtual {v2, v1, v1}, Landroid/media/AudioTrack;->setStereoVolume(FF)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string/jumbo v2, "tmessages"

    invoke-static {v2, v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method private startAudioAgain(Z)V
    .locals 9

    const/4 v3, 0x1

    const/4 v4, 0x0

    iget-object v5, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    if-nez v5, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v5, p0, Lorg/telegram/messenger/MediaController;->audioPlayer:Landroid/media/MediaPlayer;

    if-eqz v5, :cond_2

    move v1, v3

    :goto_1
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v5

    sget v6, Lorg/telegram/messenger/NotificationCenter;->audioRouteChanged:I

    new-array v7, v3, [Ljava/lang/Object;

    iget-boolean v8, p0, Lorg/telegram/messenger/MediaController;->useFrontSpeaker:Z

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v7, v4

    invoke-virtual {v5, v6, v7}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v5, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    iget v2, v5, Lorg/telegram/messenger/MessageObject;->audioProgress:F

    invoke-virtual {p0, v4, v3}, Lorg/telegram/messenger/MediaController;->cleanupPlayer(ZZ)V

    iput v2, v0, Lorg/telegram/messenger/MessageObject;->audioProgress:F

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/MediaController;->playAudio(Lorg/telegram/messenger/MessageObject;)Z

    if-eqz p1, :cond_0

    if-eqz v1, :cond_3

    new-instance v3, Lorg/telegram/messenger/MediaController$9;

    invoke-direct {v3, p0, v0}, Lorg/telegram/messenger/MediaController$9;-><init>(Lorg/telegram/messenger/MediaController;Lorg/telegram/messenger/MessageObject;)V

    const-wide/16 v4, 0x64

    invoke-static {v3, v4, v5}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    goto :goto_0

    :cond_2
    move v1, v4

    goto :goto_1

    :cond_3
    invoke-virtual {p0, v0}, Lorg/telegram/messenger/MediaController;->pauseAudio(Lorg/telegram/messenger/MessageObject;)Z

    goto :goto_0
.end method

.method private startProgressTimer(Lorg/telegram/messenger/MessageObject;)V
    .locals 8

    iget-object v7, p0, Lorg/telegram/messenger/MediaController;->progressTimerSync:Ljava/lang/Object;

    monitor-enter v7

    :try_start_0
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->progressTimer:Ljava/util/Timer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    :try_start_1
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->progressTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/messenger/MediaController;->progressTimer:Ljava/util/Timer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_0
    :goto_0
    :try_start_2
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/MediaController;->progressTimer:Ljava/util/Timer;

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->progressTimer:Ljava/util/Timer;

    new-instance v1, Lorg/telegram/messenger/MediaController$5;

    invoke-direct {v1, p0, p1}, Lorg/telegram/messenger/MediaController$5;-><init>(Lorg/telegram/messenger/MediaController;Lorg/telegram/messenger/MessageObject;)V

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x11

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    monitor-exit v7

    return-void

    :catch_0
    move-exception v6

    const-string/jumbo v0, "tmessages"

    invoke-static {v0, v6}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method private native startRecord(Ljava/lang/String;)I
.end method

.method private startVideoConvertFromQueue()V
    .locals 7

    const/4 v6, 0x0

    iget-object v4, p0, Lorg/telegram/messenger/MediaController;->videoConvertQueue:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v5, p0, Lorg/telegram/messenger/MediaController;->videoConvertSync:Ljava/lang/Object;

    monitor-enter v5

    const/4 v4, 0x0

    :try_start_0
    iput-boolean v4, p0, Lorg/telegram/messenger/MediaController;->cancelCurrentVideoConversion:Z

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v4, p0, Lorg/telegram/messenger/MediaController;->videoConvertQueue:Ljava/util/ArrayList;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/MessageObject;

    new-instance v2, Landroid/content/Intent;

    sget-object v4, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-class v5, Lorg/telegram/messenger/VideoEncodingService;

    invoke-direct {v2, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v4, "path"

    iget-object v5, v3, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v4, v3, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v4, :cond_0

    const/4 v0, 0x0

    :goto_0
    iget-object v4, v3, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_0

    iget-object v4, v3, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;

    instance-of v4, v1, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAnimated;

    if-eqz v4, :cond_2

    const-string/jumbo v4, "gif"

    const/4 v5, 0x1

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_0
    sget-object v4, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v4, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    invoke-static {v3}, Lorg/telegram/messenger/MediaController$VideoConvertRunnable;->runConversion(Lorg/telegram/messenger/MessageObject;)V

    :cond_1
    return-void

    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private stopProgressTimer()V
    .locals 3

    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->progressTimerSync:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lorg/telegram/messenger/MediaController;->progressTimer:Ljava/util/Timer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    :try_start_1
    iget-object v1, p0, Lorg/telegram/messenger/MediaController;->progressTimer:Ljava/util/Timer;

    invoke-virtual {v1}, Ljava/util/Timer;->cancel()V

    const/4 v1, 0x0

    iput-object v1, p0, Lorg/telegram/messenger/MediaController;->progressTimer:Ljava/util/Timer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v2

    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "tmessages"

    invoke-static {v1, v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private native stopRecord()V
.end method

.method private stopRecordingInternal(I)V
    .locals 6

    const/4 v5, 0x0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->recordingAudio:Lorg/telegram/tgnet/TLRPC$TL_document;

    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->recordingAudioFile:Ljava/io/File;

    iget-object v3, p0, Lorg/telegram/messenger/MediaController;->fileEncodingQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v4, Lorg/telegram/messenger/MediaController$19;

    invoke-direct {v4, p0, v0, v2, p1}, Lorg/telegram/messenger/MediaController$19;-><init>(Lorg/telegram/messenger/MediaController;Lorg/telegram/tgnet/TLRPC$TL_document;Ljava/io/File;I)V

    invoke-virtual {v3, v4}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    :cond_0
    :try_start_0
    iget-object v3, p0, Lorg/telegram/messenger/MediaController;->audioRecorder:Landroid/media/AudioRecord;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lorg/telegram/messenger/MediaController;->audioRecorder:Landroid/media/AudioRecord;

    invoke-virtual {v3}, Landroid/media/AudioRecord;->release()V

    const/4 v3, 0x0

    iput-object v3, p0, Lorg/telegram/messenger/MediaController;->audioRecorder:Landroid/media/AudioRecord;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    iput-object v5, p0, Lorg/telegram/messenger/MediaController;->recordingAudio:Lorg/telegram/tgnet/TLRPC$TL_document;

    iput-object v5, p0, Lorg/telegram/messenger/MediaController;->recordingAudioFile:Ljava/io/File;

    return-void

    :catch_0
    move-exception v1

    const-string/jumbo v3, "tmessages"

    invoke-static {v3, v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private native writeFrame(Ljava/nio/ByteBuffer;I)I
.end method


# virtual methods
.method public addLoadingFileObserver(Ljava/lang/String;Lorg/telegram/messenger/MediaController$FileDownloadProgressListener;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lorg/telegram/messenger/MediaController;->addLoadingFileObserver(Ljava/lang/String;Lorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/MediaController$FileDownloadProgressListener;)V

    return-void
.end method

.method public addLoadingFileObserver(Ljava/lang/String;Lorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/MediaController$FileDownloadProgressListener;)V
    .locals 4

    iget-boolean v2, p0, Lorg/telegram/messenger/MediaController;->listenerInProgress:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->addLaterArray:Ljava/util/HashMap;

    invoke-virtual {v2, p1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, p3}, Lorg/telegram/messenger/MediaController;->removeLoadingFileObserver(Lorg/telegram/messenger/MediaController$FileDownloadProgressListener;)V

    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->loadingFileObservers:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->loadingFileObservers:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz p2, :cond_3

    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->loadingFileMessagesObservers:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    if-nez v1, :cond_2

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->loadingFileMessagesObservers:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->observersByTag:Ljava/util/HashMap;

    invoke-interface {p3}, Lorg/telegram/messenger/MediaController$FileDownloadProgressListener;->getObserverTag()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public canAutoplayGifs()Z
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/messenger/MediaController;->autoplayGifs:Z

    return v0
.end method

.method public canCustomTabs()Z
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/messenger/MediaController;->customTabs:Z

    return v0
.end method

.method public canDirectShare()Z
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/messenger/MediaController;->directShare:Z

    return v0
.end method

.method public canDownloadMedia(I)Z
    .locals 1

    invoke-direct {p0}, Lorg/telegram/messenger/MediaController;->getCurrentDownloadMask()I

    move-result v0

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public canRaiseToSpeak()Z
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/messenger/MediaController;->raiseToSpeak:Z

    return v0
.end method

.method public canSaveToGallery()Z
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/messenger/MediaController;->saveToGallery:Z

    return v0
.end method

.method public cancelVideoConvert(Lorg/telegram/messenger/MessageObject;)V
    .locals 2

    if-nez p1, :cond_1

    iget-object v1, p0, Lorg/telegram/messenger/MediaController;->videoConvertSync:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lorg/telegram/messenger/MediaController;->cancelCurrentVideoConversion:Z

    monitor-exit v1

    :cond_0
    :goto_0
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->videoConvertQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->videoConvertQueue:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p1, :cond_2

    iget-object v1, p0, Lorg/telegram/messenger/MediaController;->videoConvertSync:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lorg/telegram/messenger/MediaController;->cancelCurrentVideoConversion:Z

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_2
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->videoConvertQueue:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_1
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method

.method public checkAutodownloadSettings()V
    .locals 12

    const/16 v11, 0x10

    const/16 v10, 0x8

    const/4 v9, 0x4

    const/4 v8, 0x2

    const/4 v7, 0x1

    invoke-direct {p0}, Lorg/telegram/messenger/MediaController;->getCurrentDownloadMask()I

    move-result v1

    iget v5, p0, Lorg/telegram/messenger/MediaController;->lastCheckMask:I

    if-ne v1, v5, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput v1, p0, Lorg/telegram/messenger/MediaController;->lastCheckMask:I

    and-int/lit8 v5, v1, 0x1

    if-eqz v5, :cond_8

    iget-object v5, p0, Lorg/telegram/messenger/MediaController;->photoDownloadQueue:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {p0, v7}, Lorg/telegram/messenger/MediaController;->newDownloadObjectsAvailable(I)V

    :cond_2
    :goto_1
    and-int/lit8 v5, v1, 0x2

    if-eqz v5, :cond_a

    iget-object v5, p0, Lorg/telegram/messenger/MediaController;->audioDownloadQueue:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {p0, v8}, Lorg/telegram/messenger/MediaController;->newDownloadObjectsAvailable(I)V

    :cond_3
    :goto_2
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_c

    iget-object v5, p0, Lorg/telegram/messenger/MediaController;->documentDownloadQueue:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {p0, v10}, Lorg/telegram/messenger/MediaController;->newDownloadObjectsAvailable(I)V

    :cond_4
    :goto_3
    and-int/lit8 v5, v1, 0x4

    if-eqz v5, :cond_e

    iget-object v5, p0, Lorg/telegram/messenger/MediaController;->videoDownloadQueue:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-virtual {p0, v9}, Lorg/telegram/messenger/MediaController;->newDownloadObjectsAvailable(I)V

    :cond_5
    :goto_4
    and-int/lit8 v5, v1, 0x10

    if-eqz v5, :cond_10

    iget-object v5, p0, Lorg/telegram/messenger/MediaController;->musicDownloadQueue:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-virtual {p0, v11}, Lorg/telegram/messenger/MediaController;->newDownloadObjectsAvailable(I)V

    :cond_6
    :goto_5
    and-int/lit8 v5, v1, 0x20

    if-eqz v5, :cond_12

    iget-object v5, p0, Lorg/telegram/messenger/MediaController;->gifDownloadQueue:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_7

    const/16 v5, 0x20

    invoke-virtual {p0, v5}, Lorg/telegram/messenger/MediaController;->newDownloadObjectsAvailable(I)V

    :cond_7
    :goto_6
    invoke-virtual {p0}, Lorg/telegram/messenger/MediaController;->getAutodownloadMask()I

    move-result v4

    if-nez v4, :cond_14

    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lorg/telegram/messenger/MessagesStorage;->clearDownloadQueue(I)V

    goto :goto_0

    :cond_8
    const/4 v0, 0x0

    :goto_7
    iget-object v5, p0, Lorg/telegram/messenger/MediaController;->photoDownloadQueue:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v0, v5, :cond_9

    iget-object v5, p0, Lorg/telegram/messenger/MediaController;->photoDownloadQueue:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/DownloadObject;

    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v6

    iget-object v5, v3, Lorg/telegram/messenger/DownloadObject;->object:Lorg/telegram/tgnet/TLObject;

    check-cast v5, Lorg/telegram/tgnet/TLRPC$PhotoSize;

    invoke-virtual {v6, v5}, Lorg/telegram/messenger/FileLoader;->cancelLoadFile(Lorg/telegram/tgnet/TLRPC$PhotoSize;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_9
    iget-object v5, p0, Lorg/telegram/messenger/MediaController;->photoDownloadQueue:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    goto :goto_1

    :cond_a
    const/4 v0, 0x0

    :goto_8
    iget-object v5, p0, Lorg/telegram/messenger/MediaController;->audioDownloadQueue:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v0, v5, :cond_b

    iget-object v5, p0, Lorg/telegram/messenger/MediaController;->audioDownloadQueue:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/DownloadObject;

    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v6

    iget-object v5, v3, Lorg/telegram/messenger/DownloadObject;->object:Lorg/telegram/tgnet/TLObject;

    check-cast v5, Lorg/telegram/tgnet/TLRPC$Document;

    invoke-virtual {v6, v5}, Lorg/telegram/messenger/FileLoader;->cancelLoadFile(Lorg/telegram/tgnet/TLRPC$Document;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_b
    iget-object v5, p0, Lorg/telegram/messenger/MediaController;->audioDownloadQueue:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    goto/16 :goto_2

    :cond_c
    const/4 v0, 0x0

    :goto_9
    iget-object v5, p0, Lorg/telegram/messenger/MediaController;->documentDownloadQueue:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v0, v5, :cond_d

    iget-object v5, p0, Lorg/telegram/messenger/MediaController;->documentDownloadQueue:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/DownloadObject;

    iget-object v2, v3, Lorg/telegram/messenger/DownloadObject;->object:Lorg/telegram/tgnet/TLObject;

    check-cast v2, Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v5

    invoke-virtual {v5, v2}, Lorg/telegram/messenger/FileLoader;->cancelLoadFile(Lorg/telegram/tgnet/TLRPC$Document;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :cond_d
    iget-object v5, p0, Lorg/telegram/messenger/MediaController;->documentDownloadQueue:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    goto/16 :goto_3

    :cond_e
    const/4 v0, 0x0

    :goto_a
    iget-object v5, p0, Lorg/telegram/messenger/MediaController;->videoDownloadQueue:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v0, v5, :cond_f

    iget-object v5, p0, Lorg/telegram/messenger/MediaController;->videoDownloadQueue:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/DownloadObject;

    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v6

    iget-object v5, v3, Lorg/telegram/messenger/DownloadObject;->object:Lorg/telegram/tgnet/TLObject;

    check-cast v5, Lorg/telegram/tgnet/TLRPC$Document;

    invoke-virtual {v6, v5}, Lorg/telegram/messenger/FileLoader;->cancelLoadFile(Lorg/telegram/tgnet/TLRPC$Document;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    :cond_f
    iget-object v5, p0, Lorg/telegram/messenger/MediaController;->videoDownloadQueue:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    goto/16 :goto_4

    :cond_10
    const/4 v0, 0x0

    :goto_b
    iget-object v5, p0, Lorg/telegram/messenger/MediaController;->musicDownloadQueue:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v0, v5, :cond_11

    iget-object v5, p0, Lorg/telegram/messenger/MediaController;->musicDownloadQueue:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/DownloadObject;

    iget-object v2, v3, Lorg/telegram/messenger/DownloadObject;->object:Lorg/telegram/tgnet/TLObject;

    check-cast v2, Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v5

    invoke-virtual {v5, v2}, Lorg/telegram/messenger/FileLoader;->cancelLoadFile(Lorg/telegram/tgnet/TLRPC$Document;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    :cond_11
    iget-object v5, p0, Lorg/telegram/messenger/MediaController;->musicDownloadQueue:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    goto/16 :goto_5

    :cond_12
    const/4 v0, 0x0

    :goto_c
    iget-object v5, p0, Lorg/telegram/messenger/MediaController;->gifDownloadQueue:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v0, v5, :cond_13

    iget-object v5, p0, Lorg/telegram/messenger/MediaController;->gifDownloadQueue:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/DownloadObject;

    iget-object v2, v3, Lorg/telegram/messenger/DownloadObject;->object:Lorg/telegram/tgnet/TLObject;

    check-cast v2, Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v5

    invoke-virtual {v5, v2}, Lorg/telegram/messenger/FileLoader;->cancelLoadFile(Lorg/telegram/tgnet/TLRPC$Document;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    :cond_13
    iget-object v5, p0, Lorg/telegram/messenger/MediaController;->gifDownloadQueue:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    goto/16 :goto_6

    :cond_14
    and-int/lit8 v5, v4, 0x1

    if-nez v5, :cond_15

    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v5

    invoke-virtual {v5, v7}, Lorg/telegram/messenger/MessagesStorage;->clearDownloadQueue(I)V

    :cond_15
    and-int/lit8 v5, v4, 0x2

    if-nez v5, :cond_16

    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v5

    invoke-virtual {v5, v8}, Lorg/telegram/messenger/MessagesStorage;->clearDownloadQueue(I)V

    :cond_16
    and-int/lit8 v5, v4, 0x4

    if-nez v5, :cond_17

    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v5

    invoke-virtual {v5, v9}, Lorg/telegram/messenger/MessagesStorage;->clearDownloadQueue(I)V

    :cond_17
    and-int/lit8 v5, v4, 0x8

    if-nez v5, :cond_18

    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v5

    invoke-virtual {v5, v10}, Lorg/telegram/messenger/MessagesStorage;->clearDownloadQueue(I)V

    :cond_18
    and-int/lit8 v5, v4, 0x10

    if-nez v5, :cond_19

    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v5

    invoke-virtual {v5, v11}, Lorg/telegram/messenger/MessagesStorage;->clearDownloadQueue(I)V

    :cond_19
    and-int/lit8 v5, v4, 0x20

    if-nez v5, :cond_0

    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v5

    const/16 v6, 0x20

    invoke-virtual {v5, v6}, Lorg/telegram/messenger/MessagesStorage;->clearDownloadQueue(I)V

    goto/16 :goto_0
.end method

.method public checkSaveToGalleryFiles()V
    .locals 6

    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    const-string/jumbo v5, "Telegram"

    invoke-direct {v2, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    const-string/jumbo v4, "Telegram Images"

    invoke-direct {v1, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    new-instance v3, Ljava/io/File;

    const-string/jumbo v4, "Telegram Video"

    invoke-direct {v3, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->mkdir()Z

    iget-boolean v4, p0, Lorg/telegram/messenger/MediaController;->saveToGallery:Z

    if-eqz v4, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_0

    new-instance v4, Ljava/io/File;

    const-string/jumbo v5, ".nomedia"

    invoke-direct {v4, v1, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    :cond_0
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_1

    new-instance v4, Ljava/io/File;

    const-string/jumbo v5, ".nomedia"

    invoke-direct {v4, v3, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_3

    new-instance v4, Ljava/io/File;

    const-string/jumbo v5, ".nomedia"

    invoke-direct {v4, v1, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->createNewFile()Z

    :cond_3
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_1

    new-instance v4, Ljava/io/File;

    const-string/jumbo v5, ".nomedia"

    invoke-direct {v4, v3, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v4, "tmessages"

    invoke-static {v4, v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public cleanup()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-virtual {p0, v2, v0}, Lorg/telegram/messenger/MediaController;->cleanupPlayer(ZZ)V

    iput-object v1, p0, Lorg/telegram/messenger/MediaController;->audioInfo:Lorg/telegram/messenger/audioinfo/AudioInfo;

    iput-boolean v2, p0, Lorg/telegram/messenger/MediaController;->playMusicAgain:Z

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->photoDownloadQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->audioDownloadQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->documentDownloadQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->videoDownloadQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->musicDownloadQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->gifDownloadQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->downloadQueueKeys:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->videoConvertQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->playlist:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->shuffledPlaylist:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->generatingWaveform:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->typingTimes:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iput-object v1, p0, Lorg/telegram/messenger/MediaController;->voiceMessagesPlaylist:Ljava/util/ArrayList;

    iput-object v1, p0, Lorg/telegram/messenger/MediaController;->voiceMessagesPlaylistMap:Ljava/util/HashMap;

    invoke-virtual {p0, v1}, Lorg/telegram/messenger/MediaController;->cancelVideoConvert(Lorg/telegram/messenger/MessageObject;)V

    return-void
.end method

.method public cleanupPlayer(ZZ)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lorg/telegram/messenger/MediaController;->cleanupPlayer(ZZZ)V

    return-void
.end method

.method public cleanupPlayer(ZZZ)V
    .locals 11

    iget-object v6, p0, Lorg/telegram/messenger/MediaController;->audioPlayer:Landroid/media/MediaPlayer;

    if-eqz v6, :cond_6

    :try_start_0
    iget-object v6, p0, Lorg/telegram/messenger/MediaController;->audioPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v6}, Landroid/media/MediaPlayer;->reset()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    :try_start_1
    iget-object v6, p0, Lorg/telegram/messenger/MediaController;->audioPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v6}, Landroid/media/MediaPlayer;->stop()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    :try_start_2
    iget-object v6, p0, Lorg/telegram/messenger/MediaController;->audioPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v6}, Landroid/media/MediaPlayer;->release()V

    const/4 v6, 0x0

    iput-object v6, p0, Lorg/telegram/messenger/MediaController;->audioPlayer:Landroid/media/MediaPlayer;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :cond_0
    :goto_2
    invoke-direct {p0}, Lorg/telegram/messenger/MediaController;->stopProgressTimer()V

    const/4 v6, 0x0

    iput v6, p0, Lorg/telegram/messenger/MediaController;->lastProgress:I

    const/4 v6, 0x0

    iput v6, p0, Lorg/telegram/messenger/MediaController;->buffersWrited:I

    const/4 v6, 0x0

    iput-boolean v6, p0, Lorg/telegram/messenger/MediaController;->isPaused:Z

    iget-object v6, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v6, :cond_4

    iget-boolean v6, p0, Lorg/telegram/messenger/MediaController;->downloadingCurrentMessage:Z

    if-eqz v6, :cond_1

    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v6

    iget-object v7, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v7}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/telegram/messenger/FileLoader;->cancelLoadFile(Lorg/telegram/tgnet/TLRPC$Document;)V

    :cond_1
    iget-object v3, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v6, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    const/4 v7, 0x0

    iput v7, v6, Lorg/telegram/messenger/MessageObject;->audioProgress:F

    iget-object v6, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    const/4 v7, 0x0

    iput v7, v6, Lorg/telegram/messenger/MessageObject;->audioProgressSec:I

    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v6

    sget v7, Lorg/telegram/messenger/NotificationCenter;->audioProgressDidChanged:I

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    iget-object v10, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v10}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {v6, v7, v8}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    const/4 v6, 0x0

    iput-object v6, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    const/4 v6, 0x0

    iput-boolean v6, p0, Lorg/telegram/messenger/MediaController;->downloadingCurrentMessage:Z

    if-eqz p1, :cond_3

    invoke-static {}, Lorg/telegram/messenger/NotificationsController;->getInstance()Lorg/telegram/messenger/NotificationsController;

    move-result-object v6

    iget-object v6, v6, Lorg/telegram/messenger/NotificationsController;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v6, p0}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    const/4 v6, 0x0

    iput v6, p0, Lorg/telegram/messenger/MediaController;->hasAudioFocus:I

    iget-object v6, p0, Lorg/telegram/messenger/MediaController;->voiceMessagesPlaylist:Ljava/util/ArrayList;

    if-eqz v6, :cond_2

    if-eqz p3, :cond_7

    iget-object v6, p0, Lorg/telegram/messenger/MediaController;->voiceMessagesPlaylist:Ljava/util/ArrayList;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v3, :cond_7

    iget-object v6, p0, Lorg/telegram/messenger/MediaController;->voiceMessagesPlaylist:Ljava/util/ArrayList;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v6, p0, Lorg/telegram/messenger/MediaController;->voiceMessagesPlaylistMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v6, p0, Lorg/telegram/messenger/MediaController;->voiceMessagesPlaylist:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_2

    const/4 v6, 0x0

    iput-object v6, p0, Lorg/telegram/messenger/MediaController;->voiceMessagesPlaylist:Ljava/util/ArrayList;

    const/4 v6, 0x0

    iput-object v6, p0, Lorg/telegram/messenger/MediaController;->voiceMessagesPlaylistMap:Ljava/util/HashMap;

    :cond_2
    :goto_3
    const/4 v4, 0x0

    iget-object v6, p0, Lorg/telegram/messenger/MediaController;->voiceMessagesPlaylist:Ljava/util/ArrayList;

    if-eqz v6, :cond_8

    iget-object v6, p0, Lorg/telegram/messenger/MediaController;->voiceMessagesPlaylist:Ljava/util/ArrayList;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/messenger/MessageObject;

    invoke-virtual {p0, v5}, Lorg/telegram/messenger/MediaController;->playAudio(Lorg/telegram/messenger/MessageObject;)Z

    :cond_3
    :goto_4
    if-eqz p2, :cond_4

    new-instance v2, Landroid/content/Intent;

    sget-object v6, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-class v7, Lorg/telegram/messenger/MusicPlayerService;

    invoke-direct {v2, v6, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    sget-object v6, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v6, v2}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    :cond_4
    iget-boolean v6, p0, Lorg/telegram/messenger/MediaController;->useFrontSpeaker:Z

    if-nez v6, :cond_5

    iget-boolean v6, p0, Lorg/telegram/messenger/MediaController;->raiseToSpeak:Z

    if-nez v6, :cond_5

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->raiseChat:Lorg/telegram/ui/ChatActivity;

    iget-object v6, p0, Lorg/telegram/messenger/MediaController;->raiseChat:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p0, v6}, Lorg/telegram/messenger/MediaController;->stopRaiseToEarSensors(Lorg/telegram/ui/ChatActivity;)V

    iput-object v0, p0, Lorg/telegram/messenger/MediaController;->raiseChat:Lorg/telegram/ui/ChatActivity;

    :cond_5
    return-void

    :catch_0
    move-exception v1

    const-string/jumbo v6, "tmessages"

    invoke-static {v6, v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    :catch_1
    move-exception v1

    const-string/jumbo v6, "tmessages"

    invoke-static {v6, v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1

    :catch_2
    move-exception v1

    const-string/jumbo v6, "tmessages"

    invoke-static {v6, v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2

    :cond_6
    iget-object v6, p0, Lorg/telegram/messenger/MediaController;->audioTrackPlayer:Landroid/media/AudioTrack;

    if-eqz v6, :cond_0

    iget-object v7, p0, Lorg/telegram/messenger/MediaController;->playerObjectSync:Ljava/lang/Object;

    monitor-enter v7

    :try_start_3
    iget-object v6, p0, Lorg/telegram/messenger/MediaController;->audioTrackPlayer:Landroid/media/AudioTrack;

    invoke-virtual {v6}, Landroid/media/AudioTrack;->pause()V

    iget-object v6, p0, Lorg/telegram/messenger/MediaController;->audioTrackPlayer:Landroid/media/AudioTrack;

    invoke-virtual {v6}, Landroid/media/AudioTrack;->flush()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    :goto_5
    :try_start_4
    iget-object v6, p0, Lorg/telegram/messenger/MediaController;->audioTrackPlayer:Landroid/media/AudioTrack;

    invoke-virtual {v6}, Landroid/media/AudioTrack;->release()V

    const/4 v6, 0x0

    iput-object v6, p0, Lorg/telegram/messenger/MediaController;->audioTrackPlayer:Landroid/media/AudioTrack;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    :goto_6
    :try_start_5
    monitor-exit v7

    goto/16 :goto_2

    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v6

    :catch_3
    move-exception v1

    :try_start_6
    const-string/jumbo v6, "tmessages"

    invoke-static {v6, v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5

    :catch_4
    move-exception v1

    const-string/jumbo v6, "tmessages"

    invoke-static {v6, v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_6

    :cond_7
    const/4 v6, 0x0

    iput-object v6, p0, Lorg/telegram/messenger/MediaController;->voiceMessagesPlaylist:Ljava/util/ArrayList;

    const/4 v6, 0x0

    iput-object v6, p0, Lorg/telegram/messenger/MediaController;->voiceMessagesPlaylistMap:Ljava/util/HashMap;

    goto/16 :goto_3

    :cond_8
    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->isVoice()Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v6

    if-eqz v6, :cond_9

    invoke-virtual {p0}, Lorg/telegram/messenger/MediaController;->startRecordingIfFromSpeaker()V

    :cond_9
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v6

    sget v7, Lorg/telegram/messenger/NotificationCenter;->audioDidReset:I

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {v6, v7, v8}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    goto/16 :goto_4
.end method

.method public varargs didReceivedNotification(I[Ljava/lang/Object;)V
    .locals 30

    sget v25, Lorg/telegram/messenger/NotificationCenter;->FileDidFailedLoad:I

    move/from16 v0, p1

    move/from16 v1, v25

    if-eq v0, v1, :cond_0

    sget v25, Lorg/telegram/messenger/NotificationCenter;->httpFileDidFailedLoad:I

    move/from16 v0, p1

    move/from16 v1, v25

    if-ne v0, v1, :cond_5

    :cond_0
    const/16 v25, 0x1

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/telegram/messenger/MediaController;->listenerInProgress:Z

    const/16 v25, 0x0

    aget-object v18, p2, v25

    check-cast v18, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MediaController;->loadingFileObservers:Ljava/util/HashMap;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    if-eqz v6, :cond_3

    const/4 v4, 0x0

    :goto_0
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v25

    move/from16 v0, v25

    if-ge v4, v0, :cond_2

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/ref/WeakReference;

    invoke-virtual/range {v24 .. v24}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v25

    if-eqz v25, :cond_1

    invoke-virtual/range {v24 .. v24}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lorg/telegram/messenger/MediaController$FileDownloadProgressListener;

    move-object/from16 v0, v25

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Lorg/telegram/messenger/MediaController$FileDownloadProgressListener;->onFailedDownload(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MediaController;->observersByTag:Ljava/util/HashMap;

    move-object/from16 v26, v0

    invoke-virtual/range {v24 .. v24}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lorg/telegram/messenger/MediaController$FileDownloadProgressListener;

    invoke-interface/range {v25 .. v25}, Lorg/telegram/messenger/MediaController$FileDownloadProgressListener;->getObserverTag()I

    move-result v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    move-object/from16 v0, v26

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MediaController;->loadingFileObservers:Ljava/util/HashMap;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    const/16 v25, 0x0

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/telegram/messenger/MediaController;->listenerInProgress:Z

    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/MediaController;->processLaterArrays()V

    const/16 v25, 0x1

    aget-object v25, p2, v25

    check-cast v25, Ljava/lang/Integer;

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Integer;->intValue()I

    move-result v25

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lorg/telegram/messenger/MediaController;->checkDownloadFinished(Ljava/lang/String;I)V

    :cond_4
    :goto_1
    return-void

    :cond_5
    sget v25, Lorg/telegram/messenger/NotificationCenter;->FileDidLoaded:I

    move/from16 v0, p1

    move/from16 v1, v25

    if-eq v0, v1, :cond_6

    sget v25, Lorg/telegram/messenger/NotificationCenter;->httpFileDidLoaded:I

    move/from16 v0, p1

    move/from16 v1, v25

    if-ne v0, v1, :cond_d

    :cond_6
    const/16 v25, 0x1

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/telegram/messenger/MediaController;->listenerInProgress:Z

    const/16 v25, 0x0

    aget-object v18, p2, v25

    check-cast v18, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/telegram/messenger/MediaController;->downloadingCurrentMessage:Z

    move/from16 v25, v0

    if-eqz v25, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    move-object/from16 v25, v0

    if-eqz v25, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Lorg/telegram/messenger/FileLoader;->getAttachFileName(Lorg/telegram/tgnet/TLObject;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_7

    const/16 v25, 0x1

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/telegram/messenger/MediaController;->playMusicAgain:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MediaController;->playAudio(Lorg/telegram/messenger/MessageObject;)Z

    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MediaController;->loadingFileMessagesObservers:Ljava/util/HashMap;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/util/ArrayList;

    if-eqz v22, :cond_9

    const/4 v4, 0x0

    :goto_2
    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v25

    move/from16 v0, v25

    if-ge v4, v0, :cond_8

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lorg/telegram/messenger/MessageObject;

    const/16 v25, 0x1

    move/from16 v0, v25

    move-object/from16 v1, v21

    iput-boolean v0, v1, Lorg/telegram/messenger/MessageObject;->mediaExists:Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MediaController;->loadingFileMessagesObservers:Ljava/util/HashMap;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MediaController;->loadingFileObservers:Ljava/util/HashMap;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    if-eqz v6, :cond_c

    const/4 v4, 0x0

    :goto_3
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v25

    move/from16 v0, v25

    if-ge v4, v0, :cond_b

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/ref/WeakReference;

    invoke-virtual/range {v24 .. v24}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v25

    if-eqz v25, :cond_a

    invoke-virtual/range {v24 .. v24}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lorg/telegram/messenger/MediaController$FileDownloadProgressListener;

    move-object/from16 v0, v25

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Lorg/telegram/messenger/MediaController$FileDownloadProgressListener;->onSuccessDownload(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MediaController;->observersByTag:Ljava/util/HashMap;

    move-object/from16 v26, v0

    invoke-virtual/range {v24 .. v24}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lorg/telegram/messenger/MediaController$FileDownloadProgressListener;

    invoke-interface/range {v25 .. v25}, Lorg/telegram/messenger/MediaController$FileDownloadProgressListener;->getObserverTag()I

    move-result v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    move-object/from16 v0, v26

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_a
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MediaController;->loadingFileObservers:Ljava/util/HashMap;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_c
    const/16 v25, 0x0

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/telegram/messenger/MediaController;->listenerInProgress:Z

    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/MediaController;->processLaterArrays()V

    const/16 v25, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lorg/telegram/messenger/MediaController;->checkDownloadFinished(Ljava/lang/String;I)V

    goto/16 :goto_1

    :cond_d
    sget v25, Lorg/telegram/messenger/NotificationCenter;->FileLoadProgressChanged:I

    move/from16 v0, p1

    move/from16 v1, v25

    if-ne v0, v1, :cond_10

    const/16 v25, 0x1

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/telegram/messenger/MediaController;->listenerInProgress:Z

    const/16 v25, 0x0

    aget-object v18, p2, v25

    check-cast v18, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MediaController;->loadingFileObservers:Ljava/util/HashMap;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    if-eqz v6, :cond_f

    const/16 v25, 0x1

    aget-object v23, p2, v25

    check-cast v23, Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v26

    :cond_e
    :goto_4
    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_f

    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/ref/WeakReference;

    invoke-virtual/range {v24 .. v24}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v25

    if-eqz v25, :cond_e

    invoke-virtual/range {v24 .. v24}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lorg/telegram/messenger/MediaController$FileDownloadProgressListener;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Float;->floatValue()F

    move-result v27

    move-object/from16 v0, v25

    move-object/from16 v1, v18

    move/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/telegram/messenger/MediaController$FileDownloadProgressListener;->onProgressDownload(Ljava/lang/String;F)V

    goto :goto_4

    :cond_f
    const/16 v25, 0x0

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/telegram/messenger/MediaController;->listenerInProgress:Z

    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/MediaController;->processLaterArrays()V

    goto/16 :goto_1

    :cond_10
    sget v25, Lorg/telegram/messenger/NotificationCenter;->FileUploadProgressChanged:I

    move/from16 v0, p1

    move/from16 v1, v25

    if-ne v0, v1, :cond_18

    const/16 v25, 0x1

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/telegram/messenger/MediaController;->listenerInProgress:Z

    const/16 v25, 0x0

    aget-object v18, p2, v25

    check-cast v18, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MediaController;->loadingFileObservers:Ljava/util/HashMap;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    if-eqz v6, :cond_12

    const/16 v25, 0x1

    aget-object v23, p2, v25

    check-cast v23, Ljava/lang/Float;

    const/16 v25, 0x2

    aget-object v16, p2, v25

    check-cast v16, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v26

    :cond_11
    :goto_5
    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_12

    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/ref/WeakReference;

    invoke-virtual/range {v24 .. v24}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v25

    if-eqz v25, :cond_11

    invoke-virtual/range {v24 .. v24}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lorg/telegram/messenger/MediaController$FileDownloadProgressListener;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Float;->floatValue()F

    move-result v27

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v28

    move-object/from16 v0, v25

    move-object/from16 v1, v18

    move/from16 v2, v27

    move/from16 v3, v28

    invoke-interface {v0, v1, v2, v3}, Lorg/telegram/messenger/MediaController$FileDownloadProgressListener;->onProgressUpload(Ljava/lang/String;FZ)V

    goto :goto_5

    :cond_12
    const/16 v25, 0x0

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/telegram/messenger/MediaController;->listenerInProgress:Z

    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/MediaController;->processLaterArrays()V

    :try_start_0
    invoke-static {}, Lorg/telegram/messenger/SendMessagesHelper;->getInstance()Lorg/telegram/messenger/SendMessagesHelper;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/SendMessagesHelper;->getDelayedMessages(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v10

    if-eqz v10, :cond_4

    const/4 v4, 0x0

    :goto_6
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v25

    move/from16 v0, v25

    if-ge v4, v0, :cond_4

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;

    iget-object v0, v9, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->encryptedChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    move-object/from16 v25, v0

    if-nez v25, :cond_15

    iget-object v0, v9, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->obj:Lorg/telegram/messenger/MessageObject;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MediaController;->typingTimes:Ljava/util/HashMap;

    move-object/from16 v25, v0

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Long;

    if-eqz v19, :cond_13

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Long;->longValue()J

    move-result-wide v26

    const-wide/16 v28, 0xfa0

    add-long v26, v26, v28

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v28

    cmp-long v25, v26, v28

    if-gez v25, :cond_15

    :cond_13
    iget-object v0, v9, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->documentLocation:Lorg/telegram/tgnet/TLRPC$TL_document;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lorg/telegram/messenger/MessageObject;->isVideoDocument(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v25

    if-eqz v25, :cond_16

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v25

    const/16 v26, 0x5

    const/16 v27, 0x0

    move-object/from16 v0, v25

    move/from16 v1, v26

    move/from16 v2, v27

    invoke-virtual {v0, v12, v13, v1, v2}, Lorg/telegram/messenger/MessagesController;->sendTyping(JII)V

    :cond_14
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MediaController;->typingTimes:Ljava/util/HashMap;

    move-object/from16 v25, v0

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v26

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v28

    invoke-static/range {v28 .. v29}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v27

    invoke-virtual/range {v25 .. v27}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_15
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    :cond_16
    iget-object v0, v9, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->documentLocation:Lorg/telegram/tgnet/TLRPC$TL_document;

    move-object/from16 v25, v0

    if-eqz v25, :cond_17

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v25

    const/16 v26, 0x3

    const/16 v27, 0x0

    move-object/from16 v0, v25

    move/from16 v1, v26

    move/from16 v2, v27

    invoke-virtual {v0, v12, v13, v1, v2}, Lorg/telegram/messenger/MessagesController;->sendTyping(JII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_7

    :catch_0
    move-exception v11

    const-string/jumbo v25, "tmessages"

    move-object/from16 v0, v25

    invoke-static {v0, v11}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1

    :cond_17
    :try_start_1
    iget-object v0, v9, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    move-object/from16 v25, v0

    if-eqz v25, :cond_14

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v25

    const/16 v26, 0x4

    const/16 v27, 0x0

    move-object/from16 v0, v25

    move/from16 v1, v26

    move/from16 v2, v27

    invoke-virtual {v0, v12, v13, v1, v2}, Lorg/telegram/messenger/MessagesController;->sendTyping(JII)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_7

    :cond_18
    sget v25, Lorg/telegram/messenger/NotificationCenter;->messagesDeleted:I

    move/from16 v0, p1

    move/from16 v1, v25

    if-ne v0, v1, :cond_1b

    const/16 v25, 0x1

    aget-object v25, p2, v25

    check-cast v25, Ljava/lang/Integer;

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Integer;->intValue()I

    move-result v8

    const/16 v25, 0x0

    aget-object v20, p2, v25

    check-cast v20, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    move-object/from16 v25, v0

    if-eqz v25, :cond_19

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    move/from16 v25, v0

    move/from16 v0, v25

    if-ne v8, v0, :cond_19

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    move-object/from16 v0, v20

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_19

    const/16 v25, 0x1

    const/16 v26, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/MediaController;->cleanupPlayer(ZZ)V

    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MediaController;->voiceMessagesPlaylist:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    if-eqz v25, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MediaController;->voiceMessagesPlaylist:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v25

    if-nez v25, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MediaController;->voiceMessagesPlaylist:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-virtual/range {v25 .. v26}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lorg/telegram/messenger/MessageObject;

    move-object/from16 v0, v21

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    move/from16 v25, v0

    move/from16 v0, v25

    if-ne v8, v0, :cond_4

    const/4 v4, 0x0

    :goto_8
    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v25

    move/from16 v0, v25

    if-ge v4, v0, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MediaController;->voiceMessagesPlaylistMap:Ljava/util/HashMap;

    move-object/from16 v25, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lorg/telegram/messenger/MessageObject;

    if-eqz v21, :cond_1a

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MediaController;->voiceMessagesPlaylist:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_1a
    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    :cond_1b
    sget v25, Lorg/telegram/messenger/NotificationCenter;->removeAllMessagesFromDialog:I

    move/from16 v0, p1

    move/from16 v1, v25

    if-ne v0, v1, :cond_1c

    const/16 v25, 0x0

    aget-object v25, p2, v25

    check-cast v25, Ljava/lang/Long;

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    move-object/from16 v25, v0

    if-eqz v25, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v26

    cmp-long v25, v26, v14

    if-nez v25, :cond_4

    const/16 v25, 0x0

    const/16 v26, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/MediaController;->cleanupPlayer(ZZ)V

    goto/16 :goto_1

    :cond_1c
    sget v25, Lorg/telegram/messenger/NotificationCenter;->musicDidLoaded:I

    move/from16 v0, p1

    move/from16 v1, v25

    if-ne v0, v1, :cond_1e

    const/16 v25, 0x0

    aget-object v25, p2, v25

    check-cast v25, Ljava/lang/Long;

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    move-object/from16 v25, v0

    if-eqz v25, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lorg/telegram/messenger/MessageObject;->isMusic()Z

    move-result v25

    if-eqz v25, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v26

    cmp-long v25, v26, v14

    if-nez v25, :cond_4

    const/16 v25, 0x1

    aget-object v7, p2, v25

    check-cast v7, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MediaController;->playlist:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    move-object/from16 v0, v25

    move/from16 v1, v26

    invoke-virtual {v0, v1, v7}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/telegram/messenger/MediaController;->shuffleMusic:Z

    move/from16 v25, v0

    if-eqz v25, :cond_1d

    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/MediaController;->buildShuffledPlayList()V

    const/16 v25, 0x0

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/messenger/MediaController;->currentPlaylistNum:I

    goto/16 :goto_1

    :cond_1d
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/messenger/MediaController;->currentPlaylistNum:I

    move/from16 v25, v0

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v26

    add-int v25, v25, v26

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/messenger/MediaController;->currentPlaylistNum:I

    goto/16 :goto_1

    :cond_1e
    sget v25, Lorg/telegram/messenger/NotificationCenter;->didReceivedNewMessages:I

    move/from16 v0, p1

    move/from16 v1, v25

    if-ne v0, v1, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MediaController;->voiceMessagesPlaylist:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    if-eqz v25, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MediaController;->voiceMessagesPlaylist:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v25

    if-nez v25, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MediaController;->voiceMessagesPlaylist:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-virtual/range {v25 .. v26}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lorg/telegram/messenger/MessageObject;

    const/16 v25, 0x0

    aget-object v25, p2, v25

    check-cast v25, Ljava/lang/Long;

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    invoke-virtual/range {v21 .. v21}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v26

    cmp-long v25, v14, v26

    if-nez v25, :cond_4

    const/16 v25, 0x1

    aget-object v5, p2, v25

    check-cast v5, Ljava/util/ArrayList;

    const/4 v4, 0x0

    :goto_9
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v25

    move/from16 v0, v25

    if-ge v4, v0, :cond_4

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lorg/telegram/messenger/MessageObject;

    invoke-virtual/range {v21 .. v21}, Lorg/telegram/messenger/MessageObject;->isVoice()Z

    move-result v25

    if-eqz v25, :cond_20

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/telegram/messenger/MediaController;->voiceMessagesPlaylistUnread:Z

    move/from16 v25, v0

    if-eqz v25, :cond_1f

    invoke-virtual/range {v21 .. v21}, Lorg/telegram/messenger/MessageObject;->isContentUnread()Z

    move-result v25

    if-eqz v25, :cond_20

    invoke-virtual/range {v21 .. v21}, Lorg/telegram/messenger/MessageObject;->isOut()Z

    move-result v25

    if-nez v25, :cond_20

    :cond_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MediaController;->voiceMessagesPlaylist:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MediaController;->voiceMessagesPlaylistMap:Ljava/util/HashMap;

    move-object/from16 v25, v0

    invoke-virtual/range {v21 .. v21}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v26

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_20
    add-int/lit8 v4, v4, 0x1

    goto :goto_9
.end method

.method public generateObserverTag()I
    .locals 2

    iget v0, p0, Lorg/telegram/messenger/MediaController;->lastTag:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/messenger/MediaController;->lastTag:I

    return v0
.end method

.method public generateWaveform(Lorg/telegram/messenger/MessageObject;)V
    .locals 6

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-static {v2}, Lorg/telegram/messenger/FileLoader;->getPathToMessage(Lorg/telegram/tgnet/TLRPC$Message;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->generatingWaveform:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->generatingWaveform:Ljava/util/HashMap;

    invoke-virtual {v2, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lorg/telegram/messenger/Utilities;->globalQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v3, Lorg/telegram/messenger/MediaController$18;

    invoke-direct {v3, p0, v1, v0}, Lorg/telegram/messenger/MediaController$18;-><init>(Lorg/telegram/messenger/MediaController;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public getAudioInfo()Lorg/telegram/messenger/audioinfo/AudioInfo;
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->audioInfo:Lorg/telegram/messenger/audioinfo/AudioInfo;

    return-object v0
.end method

.method protected getAutodownloadMask()I
    .locals 2

    const/4 v0, 0x0

    iget v1, p0, Lorg/telegram/messenger/MediaController;->mobileDataDownloadMask:I

    and-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_0

    iget v1, p0, Lorg/telegram/messenger/MediaController;->wifiDownloadMask:I

    and-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_0

    iget v1, p0, Lorg/telegram/messenger/MediaController;->roamingDownloadMask:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    :cond_0
    or-int/lit8 v0, v0, 0x1

    :cond_1
    iget v1, p0, Lorg/telegram/messenger/MediaController;->mobileDataDownloadMask:I

    and-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_2

    iget v1, p0, Lorg/telegram/messenger/MediaController;->wifiDownloadMask:I

    and-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_2

    iget v1, p0, Lorg/telegram/messenger/MediaController;->roamingDownloadMask:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_3

    :cond_2
    or-int/lit8 v0, v0, 0x2

    :cond_3
    iget v1, p0, Lorg/telegram/messenger/MediaController;->mobileDataDownloadMask:I

    and-int/lit8 v1, v1, 0x4

    if-nez v1, :cond_4

    iget v1, p0, Lorg/telegram/messenger/MediaController;->wifiDownloadMask:I

    and-int/lit8 v1, v1, 0x4

    if-nez v1, :cond_4

    iget v1, p0, Lorg/telegram/messenger/MediaController;->roamingDownloadMask:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_5

    :cond_4
    or-int/lit8 v0, v0, 0x4

    :cond_5
    iget v1, p0, Lorg/telegram/messenger/MediaController;->mobileDataDownloadMask:I

    and-int/lit8 v1, v1, 0x8

    if-nez v1, :cond_6

    iget v1, p0, Lorg/telegram/messenger/MediaController;->wifiDownloadMask:I

    and-int/lit8 v1, v1, 0x8

    if-nez v1, :cond_6

    iget v1, p0, Lorg/telegram/messenger/MediaController;->roamingDownloadMask:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_7

    :cond_6
    or-int/lit8 v0, v0, 0x8

    :cond_7
    iget v1, p0, Lorg/telegram/messenger/MediaController;->mobileDataDownloadMask:I

    and-int/lit8 v1, v1, 0x10

    if-nez v1, :cond_8

    iget v1, p0, Lorg/telegram/messenger/MediaController;->wifiDownloadMask:I

    and-int/lit8 v1, v1, 0x10

    if-nez v1, :cond_8

    iget v1, p0, Lorg/telegram/messenger/MediaController;->roamingDownloadMask:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_9

    :cond_8
    or-int/lit8 v0, v0, 0x10

    :cond_9
    iget v1, p0, Lorg/telegram/messenger/MediaController;->mobileDataDownloadMask:I

    and-int/lit8 v1, v1, 0x20

    if-nez v1, :cond_a

    iget v1, p0, Lorg/telegram/messenger/MediaController;->wifiDownloadMask:I

    and-int/lit8 v1, v1, 0x20

    if-nez v1, :cond_a

    iget v1, p0, Lorg/telegram/messenger/MediaController;->roamingDownloadMask:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_b

    :cond_a
    or-int/lit8 v0, v0, 0x20

    :cond_b
    return v0
.end method

.method public getPlayingMessageObject()Lorg/telegram/messenger/MessageObject;
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    return-object v0
.end method

.method public getPlayingMessageObjectNum()I
    .locals 1

    iget v0, p0, Lorg/telegram/messenger/MediaController;->currentPlaylistNum:I

    return v0
.end method

.method public getRepeatMode()I
    .locals 1

    iget v0, p0, Lorg/telegram/messenger/MediaController;->repeatMode:I

    return v0
.end method

.method public native getWaveform(Ljava/lang/String;)[B
.end method

.method public native getWaveform2([SI)[B
.end method

.method public isAudioPaused()Z
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/messenger/MediaController;->isPaused:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/messenger/MediaController;->downloadingCurrentMessage:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDownloadingCurrentMessage()Z
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/messenger/MediaController;->downloadingCurrentMessage:Z

    return v0
.end method

.method public isPlayingAudio(Lorg/telegram/messenger/MessageObject;)Z
    .locals 2

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->audioTrackPlayer:Landroid/media/AudioTrack;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->audioPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_2

    :cond_0
    if-eqz p1, :cond_2

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v0

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v1

    if-ne v0, v1, :cond_2

    iget-boolean v0, p0, Lorg/telegram/messenger/MediaController;->downloadingCurrentMessage:Z

    if-nez v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isRecordingAudio()Z
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->recordStartRunnable:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->recordingAudio:Lorg/telegram/tgnet/TLRPC$TL_document;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isShuffleMusic()Z
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/messenger/MediaController;->shuffleMusic:Z

    return v0
.end method

.method protected newDownloadObjectsAvailable(I)V
    .locals 3

    invoke-direct {p0}, Lorg/telegram/messenger/MediaController;->getCurrentDownloadMask()I

    move-result v0

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_0

    and-int/lit8 v1, p1, 0x1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/telegram/messenger/MediaController;->photoDownloadQueue:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/MessagesStorage;->getDownloadQueue(I)V

    :cond_0
    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_1

    and-int/lit8 v1, p1, 0x2

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/telegram/messenger/MediaController;->audioDownloadQueue:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/MessagesStorage;->getDownloadQueue(I)V

    :cond_1
    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_2

    and-int/lit8 v1, p1, 0x4

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/telegram/messenger/MediaController;->videoDownloadQueue:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/MessagesStorage;->getDownloadQueue(I)V

    :cond_2
    and-int/lit8 v1, v0, 0x8

    if-eqz v1, :cond_3

    and-int/lit8 v1, p1, 0x8

    if-eqz v1, :cond_3

    iget-object v1, p0, Lorg/telegram/messenger/MediaController;->documentDownloadQueue:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/MessagesStorage;->getDownloadQueue(I)V

    :cond_3
    and-int/lit8 v1, v0, 0x10

    if-eqz v1, :cond_4

    and-int/lit8 v1, p1, 0x10

    if-eqz v1, :cond_4

    iget-object v1, p0, Lorg/telegram/messenger/MediaController;->musicDownloadQueue:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v1

    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/MessagesStorage;->getDownloadQueue(I)V

    :cond_4
    and-int/lit8 v1, v0, 0x20

    if-eqz v1, :cond_5

    and-int/lit8 v1, p1, 0x20

    if-eqz v1, :cond_5

    iget-object v1, p0, Lorg/telegram/messenger/MediaController;->gifDownloadQueue:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v1

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/MessagesStorage;->getDownloadQueue(I)V

    :cond_5
    return-void
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public onAudioFocusChange(I)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v0, -0x1

    if-ne p1, v0, :cond_2

    invoke-virtual {p0}, Lorg/telegram/messenger/MediaController;->getPlayingMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/MediaController;->isPlayingAudio(Lorg/telegram/messenger/MessageObject;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/telegram/messenger/MediaController;->isAudioPaused()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/telegram/messenger/MediaController;->getPlayingMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/MediaController;->pauseAudio(Lorg/telegram/messenger/MessageObject;)Z

    :cond_0
    iput v1, p0, Lorg/telegram/messenger/MediaController;->hasAudioFocus:I

    iput v1, p0, Lorg/telegram/messenger/MediaController;->audioFocus:I

    :cond_1
    :goto_0
    invoke-direct {p0}, Lorg/telegram/messenger/MediaController;->setPlayerVolume()V

    return-void

    :cond_2
    if-ne p1, v2, :cond_3

    const/4 v0, 0x2

    iput v0, p0, Lorg/telegram/messenger/MediaController;->audioFocus:I

    iget-boolean v0, p0, Lorg/telegram/messenger/MediaController;->resumeAudioOnFocusGain:Z

    if-eqz v0, :cond_1

    iput-boolean v1, p0, Lorg/telegram/messenger/MediaController;->resumeAudioOnFocusGain:Z

    invoke-virtual {p0}, Lorg/telegram/messenger/MediaController;->getPlayingMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/MediaController;->isPlayingAudio(Lorg/telegram/messenger/MessageObject;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/telegram/messenger/MediaController;->isAudioPaused()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/telegram/messenger/MediaController;->getPlayingMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/MediaController;->playAudio(Lorg/telegram/messenger/MessageObject;)Z

    goto :goto_0

    :cond_3
    const/4 v0, -0x3

    if-ne p1, v0, :cond_4

    iput v2, p0, Lorg/telegram/messenger/MediaController;->audioFocus:I

    goto :goto_0

    :cond_4
    const/4 v0, -0x2

    if-ne p1, v0, :cond_1

    iput v1, p0, Lorg/telegram/messenger/MediaController;->audioFocus:I

    invoke-virtual {p0}, Lorg/telegram/messenger/MediaController;->getPlayingMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/MediaController;->isPlayingAudio(Lorg/telegram/messenger/MessageObject;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/telegram/messenger/MediaController;->isAudioPaused()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/telegram/messenger/MediaController;->getPlayingMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/MediaController;->pauseAudio(Lorg/telegram/messenger/MessageObject;)Z

    iput-boolean v2, p0, Lorg/telegram/messenger/MediaController;->resumeAudioOnFocusGain:Z

    goto :goto_0
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 18

    move-object/from16 v0, p0

    iget-boolean v9, v0, Lorg/telegram/messenger/MediaController;->sensorsStarted:Z

    if-nez v9, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/telegram/messenger/MediaController;->proximitySensor:Landroid/hardware/Sensor;

    if-ne v9, v10, :cond_b

    const-string/jumbo v9, "tmessages"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "proximity changed to "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/hardware/SensorEvent;->values:[F

    const/4 v12, 0x0

    aget v11, v11, v12

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v9, v0, Lorg/telegram/messenger/MediaController;->lastProximityValue:F

    const/high16 v10, -0x3d38

    cmpl-float v9, v9, v10

    if-nez v9, :cond_a

    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/hardware/SensorEvent;->values:[F

    const/4 v10, 0x0

    aget v9, v9, v10

    move-object/from16 v0, p0

    iput v9, v0, Lorg/telegram/messenger/MediaController;->lastProximityValue:F

    :cond_2
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v9, v0, Lorg/telegram/messenger/MediaController;->proximityHasDifferentValues:Z

    if-eqz v9, :cond_3

    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/hardware/SensorEvent;->values:[F

    const/4 v10, 0x0

    aget v9, v9, v10

    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lorg/telegram/messenger/MediaController;->isNearToSensor(F)Z

    move-result v9

    move-object/from16 v0, p0

    iput-boolean v9, v0, Lorg/telegram/messenger/MediaController;->proximityTouched:Z

    :cond_3
    :goto_2
    const/high16 v7, 0x4170

    const/4 v6, 0x6

    const/16 v5, 0xa

    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/telegram/messenger/MediaController;->linearSensor:Landroid/hardware/Sensor;

    if-eq v9, v10, :cond_4

    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/telegram/messenger/MediaController;->gravitySensor:Landroid/hardware/Sensor;

    if-eq v9, v10, :cond_4

    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/telegram/messenger/MediaController;->accelerometerSensor:Landroid/hardware/Sensor;

    if-ne v9, v10, :cond_6

    :cond_4
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/telegram/messenger/MediaController;->gravity:[F

    const/4 v10, 0x0

    aget v9, v9, v10

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/telegram/messenger/MediaController;->linearAcceleration:[F

    const/4 v11, 0x0

    aget v10, v10, v11

    mul-float/2addr v9, v10

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/telegram/messenger/MediaController;->gravity:[F

    const/4 v11, 0x1

    aget v10, v10, v11

    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/messenger/MediaController;->linearAcceleration:[F

    const/4 v12, 0x1

    aget v11, v11, v12

    mul-float/2addr v10, v11

    add-float/2addr v9, v10

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/telegram/messenger/MediaController;->gravity:[F

    const/4 v11, 0x2

    aget v10, v10, v11

    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/messenger/MediaController;->linearAcceleration:[F

    const/4 v12, 0x2

    aget v11, v11, v12

    mul-float/2addr v10, v11

    add-float v8, v9, v10

    move-object/from16 v0, p0

    iget v9, v0, Lorg/telegram/messenger/MediaController;->raisedToBack:I

    const/4 v10, 0x6

    if-eq v9, v10, :cond_5

    const/4 v9, 0x0

    cmpl-float v9, v8, v9

    if-lez v9, :cond_12

    move-object/from16 v0, p0

    iget v9, v0, Lorg/telegram/messenger/MediaController;->previousAccValue:F

    const/4 v10, 0x0

    cmpl-float v9, v9, v10

    if-lez v9, :cond_12

    const/high16 v9, 0x4170

    cmpl-float v9, v8, v9

    if-lez v9, :cond_f

    move-object/from16 v0, p0

    iget v9, v0, Lorg/telegram/messenger/MediaController;->raisedToBack:I

    if-nez v9, :cond_f

    move-object/from16 v0, p0

    iget v9, v0, Lorg/telegram/messenger/MediaController;->raisedToTop:I

    const/4 v10, 0x6

    if-ge v9, v10, :cond_5

    move-object/from16 v0, p0

    iget-boolean v9, v0, Lorg/telegram/messenger/MediaController;->proximityTouched:Z

    if-nez v9, :cond_5

    move-object/from16 v0, p0

    iget v9, v0, Lorg/telegram/messenger/MediaController;->raisedToTop:I

    add-int/lit8 v9, v9, 0x1

    move-object/from16 v0, p0

    iput v9, v0, Lorg/telegram/messenger/MediaController;->raisedToTop:I

    move-object/from16 v0, p0

    iget v9, v0, Lorg/telegram/messenger/MediaController;->raisedToTop:I

    const/4 v10, 0x6

    if-ne v9, v10, :cond_5

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iput v9, v0, Lorg/telegram/messenger/MediaController;->countLess:I

    :cond_5
    :goto_3
    move-object/from16 v0, p0

    iput v8, v0, Lorg/telegram/messenger/MediaController;->previousAccValue:F

    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/telegram/messenger/MediaController;->gravityFast:[F

    const/4 v10, 0x1

    aget v9, v9, v10

    const/high16 v10, 0x4020

    cmpl-float v9, v9, v10

    if-lez v9, :cond_16

    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/telegram/messenger/MediaController;->gravityFast:[F

    const/4 v10, 0x2

    aget v9, v9, v10

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    const/high16 v10, 0x4080

    cmpg-float v9, v9, v10

    if-gez v9, :cond_16

    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/telegram/messenger/MediaController;->gravityFast:[F

    const/4 v10, 0x0

    aget v9, v9, v10

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    const/high16 v10, 0x3fc0

    cmpl-float v9, v9, v10

    if-lez v9, :cond_16

    const/4 v9, 0x1

    :goto_4
    move-object/from16 v0, p0

    iput-boolean v9, v0, Lorg/telegram/messenger/MediaController;->accelerometerVertical:Z

    :cond_6
    move-object/from16 v0, p0

    iget v9, v0, Lorg/telegram/messenger/MediaController;->raisedToBack:I

    const/4 v10, 0x6

    if-ne v9, v10, :cond_19

    move-object/from16 v0, p0

    iget-boolean v9, v0, Lorg/telegram/messenger/MediaController;->accelerometerVertical:Z

    if-eqz v9, :cond_19

    move-object/from16 v0, p0

    iget-boolean v9, v0, Lorg/telegram/messenger/MediaController;->proximityTouched:Z

    if-eqz v9, :cond_19

    invoke-static {}, Lorg/telegram/messenger/NotificationsController;->getInstance()Lorg/telegram/messenger/NotificationsController;

    move-result-object v9

    iget-object v9, v9, Lorg/telegram/messenger/NotificationsController;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v9}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v9

    if-nez v9, :cond_19

    const-string/jumbo v9, "tmessages"

    const-string/jumbo v10, "sensor values reached"

    invoke-static {v9, v10}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    if-nez v9, :cond_17

    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/telegram/messenger/MediaController;->recordStartRunnable:Ljava/lang/Runnable;

    if-nez v9, :cond_17

    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/telegram/messenger/MediaController;->recordingAudio:Lorg/telegram/tgnet/TLRPC$TL_document;

    if-nez v9, :cond_17

    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object v9

    invoke-virtual {v9}, Lorg/telegram/ui/PhotoViewer;->isVisible()Z

    move-result v9

    if-nez v9, :cond_17

    sget-boolean v9, Lorg/telegram/messenger/ApplicationLoader;->isScreenOn:Z

    if-eqz v9, :cond_17

    move-object/from16 v0, p0

    iget-boolean v9, v0, Lorg/telegram/messenger/MediaController;->inputFieldHasText:Z

    if-nez v9, :cond_17

    move-object/from16 v0, p0

    iget-boolean v9, v0, Lorg/telegram/messenger/MediaController;->allowStartRecord:Z

    if-eqz v9, :cond_17

    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/telegram/messenger/MediaController;->raiseChat:Lorg/telegram/ui/ChatActivity;

    if-eqz v9, :cond_17

    move-object/from16 v0, p0

    iget-boolean v9, v0, Lorg/telegram/messenger/MediaController;->callInProgress:Z

    if-nez v9, :cond_17

    move-object/from16 v0, p0

    iget-boolean v9, v0, Lorg/telegram/messenger/MediaController;->raiseToEarRecord:Z

    if-nez v9, :cond_8

    const-string/jumbo v9, "tmessages"

    const-string/jumbo v10, "start record"

    invoke-static {v9, v10}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v9, 0x1

    move-object/from16 v0, p0

    iput-boolean v9, v0, Lorg/telegram/messenger/MediaController;->useFrontSpeaker:Z

    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/telegram/messenger/MediaController;->raiseChat:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v9}, Lorg/telegram/ui/ChatActivity;->playFirstUnreadVoiceMessage()Z

    move-result v9

    if-nez v9, :cond_7

    const/4 v9, 0x1

    move-object/from16 v0, p0

    iput-boolean v9, v0, Lorg/telegram/messenger/MediaController;->raiseToEarRecord:Z

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iput-boolean v9, v0, Lorg/telegram/messenger/MediaController;->useFrontSpeaker:Z

    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/telegram/messenger/MediaController;->raiseChat:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v9}, Lorg/telegram/ui/ChatActivity;->getDialogId()J

    move-result-wide v10

    const/4 v9, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v11, v9}, Lorg/telegram/messenger/MediaController;->startRecording(JLorg/telegram/messenger/MessageObject;)V

    :cond_7
    const/4 v9, 0x1

    move-object/from16 v0, p0

    iput-boolean v9, v0, Lorg/telegram/messenger/MediaController;->ignoreOnPause:Z

    move-object/from16 v0, p0

    iget-boolean v9, v0, Lorg/telegram/messenger/MediaController;->proximityHasDifferentValues:Z

    if-eqz v9, :cond_8

    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/telegram/messenger/MediaController;->proximityWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v9, :cond_8

    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/telegram/messenger/MediaController;->proximityWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v9}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v9

    if-nez v9, :cond_8

    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/telegram/messenger/MediaController;->proximityWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v9}, Landroid/os/PowerManager$WakeLock;->acquire()V

    :cond_8
    :goto_5
    const/4 v9, 0x0

    move-object/from16 v0, p0

    iput v9, v0, Lorg/telegram/messenger/MediaController;->raisedToBack:I

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iput v9, v0, Lorg/telegram/messenger/MediaController;->raisedToTop:I

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iput v9, v0, Lorg/telegram/messenger/MediaController;->countLess:I

    :cond_9
    :goto_6
    move-object/from16 v0, p0

    iget-wide v10, v0, Lorg/telegram/messenger/MediaController;->timeSinceRaise:J

    const-wide/16 v12, 0x0

    cmp-long v9, v10, v12

    if-eqz v9, :cond_0

    move-object/from16 v0, p0

    iget v9, v0, Lorg/telegram/messenger/MediaController;->raisedToBack:I

    const/4 v10, 0x6

    if-ne v9, v10, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    move-object/from16 v0, p0

    iget-wide v12, v0, Lorg/telegram/messenger/MediaController;->timeSinceRaise:J

    sub-long/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Math;->abs(J)J

    move-result-wide v10

    const-wide/16 v12, 0x3e8

    cmp-long v9, v10, v12

    if-lez v9, :cond_0

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iput v9, v0, Lorg/telegram/messenger/MediaController;->raisedToBack:I

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iput v9, v0, Lorg/telegram/messenger/MediaController;->raisedToTop:I

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iput v9, v0, Lorg/telegram/messenger/MediaController;->countLess:I

    const-wide/16 v10, 0x0

    move-object/from16 v0, p0

    iput-wide v10, v0, Lorg/telegram/messenger/MediaController;->timeSinceRaise:J

    goto/16 :goto_0

    :cond_a
    move-object/from16 v0, p0

    iget v9, v0, Lorg/telegram/messenger/MediaController;->lastProximityValue:F

    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/hardware/SensorEvent;->values:[F

    const/4 v11, 0x0

    aget v10, v10, v11

    cmpl-float v9, v9, v10

    if-eqz v9, :cond_2

    const/4 v9, 0x1

    move-object/from16 v0, p0

    iput-boolean v9, v0, Lorg/telegram/messenger/MediaController;->proximityHasDifferentValues:Z

    goto/16 :goto_1

    :cond_b
    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/telegram/messenger/MediaController;->accelerometerSensor:Landroid/hardware/Sensor;

    if-ne v9, v10, :cond_d

    move-object/from16 v0, p0

    iget-wide v10, v0, Lorg/telegram/messenger/MediaController;->lastTimestamp:J

    const-wide/16 v12, 0x0

    cmp-long v9, v10, v12

    if-nez v9, :cond_c

    const-wide v2, 0x3fef5c2900000000L

    :goto_7
    const v4, 0x3f4ccccd

    move-object/from16 v0, p1

    iget-wide v10, v0, Landroid/hardware/SensorEvent;->timestamp:J

    move-object/from16 v0, p0

    iput-wide v10, v0, Lorg/telegram/messenger/MediaController;->lastTimestamp:J

    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/telegram/messenger/MediaController;->gravity:[F

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/messenger/MediaController;->gravity:[F

    const/4 v12, 0x0

    aget v11, v11, v12

    float-to-double v12, v11

    mul-double/2addr v12, v2

    const-wide/high16 v14, 0x3ff0

    sub-double/2addr v14, v2

    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/hardware/SensorEvent;->values:[F

    const/16 v16, 0x0

    aget v11, v11, v16

    float-to-double v0, v11

    move-wide/from16 v16, v0

    mul-double v14, v14, v16

    add-double/2addr v12, v14

    double-to-float v11, v12

    aput v11, v9, v10

    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/telegram/messenger/MediaController;->gravity:[F

    const/4 v10, 0x1

    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/messenger/MediaController;->gravity:[F

    const/4 v12, 0x1

    aget v11, v11, v12

    float-to-double v12, v11

    mul-double/2addr v12, v2

    const-wide/high16 v14, 0x3ff0

    sub-double/2addr v14, v2

    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/hardware/SensorEvent;->values:[F

    const/16 v16, 0x1

    aget v11, v11, v16

    float-to-double v0, v11

    move-wide/from16 v16, v0

    mul-double v14, v14, v16

    add-double/2addr v12, v14

    double-to-float v11, v12

    aput v11, v9, v10

    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/telegram/messenger/MediaController;->gravity:[F

    const/4 v10, 0x2

    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/messenger/MediaController;->gravity:[F

    const/4 v12, 0x2

    aget v11, v11, v12

    float-to-double v12, v11

    mul-double/2addr v12, v2

    const-wide/high16 v14, 0x3ff0

    sub-double/2addr v14, v2

    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/hardware/SensorEvent;->values:[F

    const/16 v16, 0x2

    aget v11, v11, v16

    float-to-double v0, v11

    move-wide/from16 v16, v0

    mul-double v14, v14, v16

    add-double/2addr v12, v14

    double-to-float v11, v12

    aput v11, v9, v10

    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/telegram/messenger/MediaController;->gravityFast:[F

    const/4 v10, 0x0

    const v11, 0x3f4ccccd

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/messenger/MediaController;->gravity:[F

    const/4 v13, 0x0

    aget v12, v12, v13

    mul-float/2addr v11, v12

    const v12, 0x3e4ccccc

    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/hardware/SensorEvent;->values:[F

    const/4 v14, 0x0

    aget v13, v13, v14

    mul-float/2addr v12, v13

    add-float/2addr v11, v12

    aput v11, v9, v10

    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/telegram/messenger/MediaController;->gravityFast:[F

    const/4 v10, 0x1

    const v11, 0x3f4ccccd

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/messenger/MediaController;->gravity:[F

    const/4 v13, 0x1

    aget v12, v12, v13

    mul-float/2addr v11, v12

    const v12, 0x3e4ccccc

    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/hardware/SensorEvent;->values:[F

    const/4 v14, 0x1

    aget v13, v13, v14

    mul-float/2addr v12, v13

    add-float/2addr v11, v12

    aput v11, v9, v10

    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/telegram/messenger/MediaController;->gravityFast:[F

    const/4 v10, 0x2

    const v11, 0x3f4ccccd

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/messenger/MediaController;->gravity:[F

    const/4 v13, 0x2

    aget v12, v12, v13

    mul-float/2addr v11, v12

    const v12, 0x3e4ccccc

    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/hardware/SensorEvent;->values:[F

    const/4 v14, 0x2

    aget v13, v13, v14

    mul-float/2addr v12, v13

    add-float/2addr v11, v12

    aput v11, v9, v10

    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/telegram/messenger/MediaController;->linearAcceleration:[F

    const/4 v10, 0x0

    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/hardware/SensorEvent;->values:[F

    const/4 v12, 0x0

    aget v11, v11, v12

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/messenger/MediaController;->gravity:[F

    const/4 v13, 0x0

    aget v12, v12, v13

    sub-float/2addr v11, v12

    aput v11, v9, v10

    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/telegram/messenger/MediaController;->linearAcceleration:[F

    const/4 v10, 0x1

    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/hardware/SensorEvent;->values:[F

    const/4 v12, 0x1

    aget v11, v11, v12

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/messenger/MediaController;->gravity:[F

    const/4 v13, 0x1

    aget v12, v12, v13

    sub-float/2addr v11, v12

    aput v11, v9, v10

    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/telegram/messenger/MediaController;->linearAcceleration:[F

    const/4 v10, 0x2

    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/hardware/SensorEvent;->values:[F

    const/4 v12, 0x2

    aget v11, v11, v12

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/messenger/MediaController;->gravity:[F

    const/4 v13, 0x2

    aget v12, v12, v13

    sub-float/2addr v11, v12

    aput v11, v9, v10

    goto/16 :goto_2

    :cond_c
    const-wide/high16 v10, 0x3ff0

    const-wide/high16 v12, 0x3ff0

    move-object/from16 v0, p1

    iget-wide v14, v0, Landroid/hardware/SensorEvent;->timestamp:J

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/telegram/messenger/MediaController;->lastTimestamp:J

    move-wide/from16 v16, v0

    sub-long v14, v14, v16

    long-to-double v14, v14

    const-wide v16, 0x41cdcd6500000000L

    div-double v14, v14, v16

    add-double/2addr v12, v14

    div-double v2, v10, v12

    goto/16 :goto_7

    :cond_d
    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/telegram/messenger/MediaController;->linearSensor:Landroid/hardware/Sensor;

    if-ne v9, v10, :cond_e

    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/telegram/messenger/MediaController;->linearAcceleration:[F

    const/4 v10, 0x0

    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/hardware/SensorEvent;->values:[F

    const/4 v12, 0x0

    aget v11, v11, v12

    aput v11, v9, v10

    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/telegram/messenger/MediaController;->linearAcceleration:[F

    const/4 v10, 0x1

    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/hardware/SensorEvent;->values:[F

    const/4 v12, 0x1

    aget v11, v11, v12

    aput v11, v9, v10

    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/telegram/messenger/MediaController;->linearAcceleration:[F

    const/4 v10, 0x2

    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/hardware/SensorEvent;->values:[F

    const/4 v12, 0x2

    aget v11, v11, v12

    aput v11, v9, v10

    goto/16 :goto_2

    :cond_e
    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/telegram/messenger/MediaController;->gravitySensor:Landroid/hardware/Sensor;

    if-ne v9, v10, :cond_3

    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/telegram/messenger/MediaController;->gravityFast:[F

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/messenger/MediaController;->gravity:[F

    const/4 v12, 0x0

    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/hardware/SensorEvent;->values:[F

    const/4 v14, 0x0

    aget v13, v13, v14

    aput v13, v11, v12

    aput v13, v9, v10

    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/telegram/messenger/MediaController;->gravityFast:[F

    const/4 v10, 0x1

    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/messenger/MediaController;->gravity:[F

    const/4 v12, 0x1

    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/hardware/SensorEvent;->values:[F

    const/4 v14, 0x1

    aget v13, v13, v14

    aput v13, v11, v12

    aput v13, v9, v10

    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/telegram/messenger/MediaController;->gravityFast:[F

    const/4 v10, 0x2

    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/messenger/MediaController;->gravity:[F

    const/4 v12, 0x2

    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/hardware/SensorEvent;->values:[F

    const/4 v14, 0x2

    aget v13, v13, v14

    aput v13, v11, v12

    aput v13, v9, v10

    goto/16 :goto_2

    :cond_f
    const/high16 v9, 0x4170

    cmpg-float v9, v8, v9

    if-gez v9, :cond_10

    move-object/from16 v0, p0

    iget v9, v0, Lorg/telegram/messenger/MediaController;->countLess:I

    add-int/lit8 v9, v9, 0x1

    move-object/from16 v0, p0

    iput v9, v0, Lorg/telegram/messenger/MediaController;->countLess:I

    :cond_10
    move-object/from16 v0, p0

    iget v9, v0, Lorg/telegram/messenger/MediaController;->countLess:I

    const/16 v10, 0xa

    if-eq v9, v10, :cond_11

    move-object/from16 v0, p0

    iget v9, v0, Lorg/telegram/messenger/MediaController;->raisedToTop:I

    const/4 v10, 0x6

    if-ne v9, v10, :cond_11

    move-object/from16 v0, p0

    iget v9, v0, Lorg/telegram/messenger/MediaController;->raisedToBack:I

    if-eqz v9, :cond_5

    :cond_11
    const/4 v9, 0x0

    move-object/from16 v0, p0

    iput v9, v0, Lorg/telegram/messenger/MediaController;->raisedToBack:I

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iput v9, v0, Lorg/telegram/messenger/MediaController;->raisedToTop:I

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iput v9, v0, Lorg/telegram/messenger/MediaController;->countLess:I

    goto/16 :goto_3

    :cond_12
    const/4 v9, 0x0

    cmpg-float v9, v8, v9

    if-gez v9, :cond_5

    move-object/from16 v0, p0

    iget v9, v0, Lorg/telegram/messenger/MediaController;->previousAccValue:F

    const/4 v10, 0x0

    cmpg-float v9, v9, v10

    if-gez v9, :cond_5

    move-object/from16 v0, p0

    iget v9, v0, Lorg/telegram/messenger/MediaController;->raisedToTop:I

    const/4 v10, 0x6

    if-ne v9, v10, :cond_13

    const/high16 v9, -0x3e90

    cmpg-float v9, v8, v9

    if-gez v9, :cond_13

    move-object/from16 v0, p0

    iget v9, v0, Lorg/telegram/messenger/MediaController;->raisedToBack:I

    const/4 v10, 0x6

    if-ge v9, v10, :cond_5

    move-object/from16 v0, p0

    iget v9, v0, Lorg/telegram/messenger/MediaController;->raisedToBack:I

    add-int/lit8 v9, v9, 0x1

    move-object/from16 v0, p0

    iput v9, v0, Lorg/telegram/messenger/MediaController;->raisedToBack:I

    move-object/from16 v0, p0

    iget v9, v0, Lorg/telegram/messenger/MediaController;->raisedToBack:I

    const/4 v10, 0x6

    if-ne v9, v10, :cond_5

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iput v9, v0, Lorg/telegram/messenger/MediaController;->raisedToTop:I

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iput v9, v0, Lorg/telegram/messenger/MediaController;->countLess:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    move-object/from16 v0, p0

    iput-wide v10, v0, Lorg/telegram/messenger/MediaController;->timeSinceRaise:J

    goto/16 :goto_3

    :cond_13
    const/high16 v9, -0x3e90

    cmpl-float v9, v8, v9

    if-lez v9, :cond_14

    move-object/from16 v0, p0

    iget v9, v0, Lorg/telegram/messenger/MediaController;->countLess:I

    add-int/lit8 v9, v9, 0x1

    move-object/from16 v0, p0

    iput v9, v0, Lorg/telegram/messenger/MediaController;->countLess:I

    :cond_14
    move-object/from16 v0, p0

    iget v9, v0, Lorg/telegram/messenger/MediaController;->countLess:I

    const/16 v10, 0xa

    if-eq v9, v10, :cond_15

    move-object/from16 v0, p0

    iget v9, v0, Lorg/telegram/messenger/MediaController;->raisedToTop:I

    const/4 v10, 0x6

    if-ne v9, v10, :cond_15

    move-object/from16 v0, p0

    iget v9, v0, Lorg/telegram/messenger/MediaController;->raisedToBack:I

    if-eqz v9, :cond_5

    :cond_15
    const/4 v9, 0x0

    move-object/from16 v0, p0

    iput v9, v0, Lorg/telegram/messenger/MediaController;->raisedToTop:I

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iput v9, v0, Lorg/telegram/messenger/MediaController;->raisedToBack:I

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iput v9, v0, Lorg/telegram/messenger/MediaController;->countLess:I

    goto/16 :goto_3

    :cond_16
    const/4 v9, 0x0

    goto/16 :goto_4

    :cond_17
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v9, :cond_8

    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v9}, Lorg/telegram/messenger/MessageObject;->isVoice()Z

    move-result v9

    if-eqz v9, :cond_8

    move-object/from16 v0, p0

    iget-boolean v9, v0, Lorg/telegram/messenger/MediaController;->useFrontSpeaker:Z

    if-nez v9, :cond_8

    const-string/jumbo v9, "tmessages"

    const-string/jumbo v10, "start listen"

    invoke-static {v9, v10}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-boolean v9, v0, Lorg/telegram/messenger/MediaController;->proximityHasDifferentValues:Z

    if-eqz v9, :cond_18

    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/telegram/messenger/MediaController;->proximityWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v9, :cond_18

    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/telegram/messenger/MediaController;->proximityWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v9}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v9

    if-nez v9, :cond_18

    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/telegram/messenger/MediaController;->proximityWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v9}, Landroid/os/PowerManager$WakeLock;->acquire()V

    :cond_18
    const/4 v9, 0x1

    move-object/from16 v0, p0

    iput-boolean v9, v0, Lorg/telegram/messenger/MediaController;->useFrontSpeaker:Z

    const/4 v9, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lorg/telegram/messenger/MediaController;->startAudioAgain(Z)V

    const/4 v9, 0x1

    move-object/from16 v0, p0

    iput-boolean v9, v0, Lorg/telegram/messenger/MediaController;->ignoreOnPause:Z

    goto/16 :goto_5

    :cond_19
    move-object/from16 v0, p0

    iget-boolean v9, v0, Lorg/telegram/messenger/MediaController;->proximityTouched:Z

    if-eqz v9, :cond_1b

    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v9, :cond_9

    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v9}, Lorg/telegram/messenger/MessageObject;->isVoice()Z

    move-result v9

    if-eqz v9, :cond_9

    move-object/from16 v0, p0

    iget-boolean v9, v0, Lorg/telegram/messenger/MediaController;->useFrontSpeaker:Z

    if-nez v9, :cond_9

    const-string/jumbo v9, "tmessages"

    const-string/jumbo v10, "start listen by proximity only"

    invoke-static {v9, v10}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-boolean v9, v0, Lorg/telegram/messenger/MediaController;->proximityHasDifferentValues:Z

    if-eqz v9, :cond_1a

    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/telegram/messenger/MediaController;->proximityWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v9, :cond_1a

    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/telegram/messenger/MediaController;->proximityWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v9}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v9

    if-nez v9, :cond_1a

    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/telegram/messenger/MediaController;->proximityWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v9}, Landroid/os/PowerManager$WakeLock;->acquire()V

    :cond_1a
    const/4 v9, 0x1

    move-object/from16 v0, p0

    iput-boolean v9, v0, Lorg/telegram/messenger/MediaController;->useFrontSpeaker:Z

    const/4 v9, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lorg/telegram/messenger/MediaController;->startAudioAgain(Z)V

    const/4 v9, 0x1

    move-object/from16 v0, p0

    iput-boolean v9, v0, Lorg/telegram/messenger/MediaController;->ignoreOnPause:Z

    goto/16 :goto_6

    :cond_1b
    move-object/from16 v0, p0

    iget-boolean v9, v0, Lorg/telegram/messenger/MediaController;->proximityTouched:Z

    if-nez v9, :cond_9

    move-object/from16 v0, p0

    iget-boolean v9, v0, Lorg/telegram/messenger/MediaController;->raiseToEarRecord:Z

    if-eqz v9, :cond_1c

    const-string/jumbo v9, "tmessages"

    const-string/jumbo v10, "stop record"

    invoke-static {v9, v10}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v9, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lorg/telegram/messenger/MediaController;->stopRecording(I)V

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iput-boolean v9, v0, Lorg/telegram/messenger/MediaController;->raiseToEarRecord:Z

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iput-boolean v9, v0, Lorg/telegram/messenger/MediaController;->ignoreOnPause:Z

    move-object/from16 v0, p0

    iget-boolean v9, v0, Lorg/telegram/messenger/MediaController;->proximityHasDifferentValues:Z

    if-eqz v9, :cond_9

    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/telegram/messenger/MediaController;->proximityWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v9, :cond_9

    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/telegram/messenger/MediaController;->proximityWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v9}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v9

    if-eqz v9, :cond_9

    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/telegram/messenger/MediaController;->proximityWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v9}, Landroid/os/PowerManager$WakeLock;->release()V

    goto/16 :goto_6

    :cond_1c
    move-object/from16 v0, p0

    iget-boolean v9, v0, Lorg/telegram/messenger/MediaController;->useFrontSpeaker:Z

    if-eqz v9, :cond_9

    const-string/jumbo v9, "tmessages"

    const-string/jumbo v10, "stop listen"

    invoke-static {v9, v10}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iput-boolean v9, v0, Lorg/telegram/messenger/MediaController;->useFrontSpeaker:Z

    const/4 v9, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lorg/telegram/messenger/MediaController;->startAudioAgain(Z)V

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iput-boolean v9, v0, Lorg/telegram/messenger/MediaController;->ignoreOnPause:Z

    move-object/from16 v0, p0

    iget-boolean v9, v0, Lorg/telegram/messenger/MediaController;->proximityHasDifferentValues:Z

    if-eqz v9, :cond_9

    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/telegram/messenger/MediaController;->proximityWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v9, :cond_9

    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/telegram/messenger/MediaController;->proximityWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v9}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v9

    if-eqz v9, :cond_9

    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/telegram/messenger/MediaController;->proximityWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v9}, Landroid/os/PowerManager$WakeLock;->release()V

    goto/16 :goto_6
.end method

.method public pauseAudio(Lorg/telegram/messenger/MessageObject;)Z
    .locals 8

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v3, p0, Lorg/telegram/messenger/MediaController;->audioTrackPlayer:Landroid/media/AudioTrack;

    if-nez v3, :cond_0

    iget-object v3, p0, Lorg/telegram/messenger/MediaController;->audioPlayer:Landroid/media/MediaPlayer;

    if-eqz v3, :cond_1

    :cond_0
    if-eqz p1, :cond_1

    iget-object v3, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v3

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v4

    if-eq v3, v4, :cond_2

    :cond_1
    :goto_0
    return v1

    :cond_2
    invoke-direct {p0}, Lorg/telegram/messenger/MediaController;->stopProgressTimer()V

    :try_start_0
    iget-object v3, p0, Lorg/telegram/messenger/MediaController;->audioPlayer:Landroid/media/MediaPlayer;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lorg/telegram/messenger/MediaController;->audioPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->pause()V

    :cond_3
    :goto_1
    const/4 v3, 0x1

    iput-boolean v3, p0, Lorg/telegram/messenger/MediaController;->isPaused:Z

    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v3

    sget v4, Lorg/telegram/messenger/NotificationCenter;->audioPlayStateChanged:I

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v7}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    move v1, v2

    goto :goto_0

    :cond_4
    iget-object v3, p0, Lorg/telegram/messenger/MediaController;->audioTrackPlayer:Landroid/media/AudioTrack;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lorg/telegram/messenger/MediaController;->audioTrackPlayer:Landroid/media/AudioTrack;

    invoke-virtual {v3}, Landroid/media/AudioTrack;->pause()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string/jumbo v2, "tmessages"

    invoke-static {v2, v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    iput-boolean v1, p0, Lorg/telegram/messenger/MediaController;->isPaused:Z

    goto :goto_0
.end method

.method public playAudio(Lorg/telegram/messenger/MessageObject;)Z
    .locals 19

    if-nez p1, :cond_0

    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MediaController;->audioTrackPlayer:Landroid/media/AudioTrack;

    if-nez v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MediaController;->audioPlayer:Landroid/media/MediaPlayer;

    if-eqz v2, :cond_4

    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v2, :cond_4

    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v3

    if-ne v2, v3, :cond_4

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/messenger/MediaController;->isPaused:Z

    if-eqz v2, :cond_2

    invoke-virtual/range {p0 .. p1}, Lorg/telegram/messenger/MediaController;->resumeAudio(Lorg/telegram/messenger/MessageObject;)Z

    :cond_2
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/messenger/MediaController;->raiseToSpeak:Z

    if-nez v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MediaController;->raiseChat:Lorg/telegram/ui/ChatActivity;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/MediaController;->startRaiseToEarSensors(Lorg/telegram/ui/ChatActivity;)V

    :cond_3
    const/4 v2, 0x1

    goto :goto_0

    :cond_4
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->isOut()Z

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->isContentUnread()Z

    move-result v2

    if-eqz v2, :cond_5

    move-object/from16 v0, p1

    iget-object v2, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    if-nez v2, :cond_5

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Lorg/telegram/messenger/MessagesController;->markMessageContentAsRead(Lorg/telegram/messenger/MessageObject;)V

    :cond_5
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/messenger/MediaController;->playMusicAgain:Z

    if-nez v2, :cond_8

    const/4 v14, 0x1

    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v2, :cond_6

    const/4 v14, 0x0

    :cond_6
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v2}, Lorg/telegram/messenger/MediaController;->cleanupPlayer(ZZ)V

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/messenger/MediaController;->playMusicAgain:Z

    const/4 v12, 0x0

    move-object/from16 v0, p1

    iget-object v2, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    if-eqz v2, :cond_7

    move-object/from16 v0, p1

    iget-object v2, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_7

    new-instance v12, Ljava/io/File;

    move-object/from16 v0, p1

    iget-object v2, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    invoke-direct {v12, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_7

    const/4 v12, 0x0

    :cond_7
    if-eqz v12, :cond_9

    move-object v9, v12

    :goto_2
    if-eqz v9, :cond_b

    if-eq v9, v12, :cond_b

    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_b

    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->isMusic()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lorg/telegram/messenger/FileLoader;->loadFile(Lorg/telegram/tgnet/TLRPC$Document;ZZ)V

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/messenger/MediaController;->downloadingCurrentMessage:Z

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/messenger/MediaController;->isPaused:Z

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/messenger/MediaController;->lastProgress:I

    const-wide/16 v2, 0x0

    move-object/from16 v0, p0

    iput-wide v2, v0, Lorg/telegram/messenger/MediaController;->lastPlayPcm:J

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/messenger/MediaController;->audioInfo:Lorg/telegram/messenger/audioinfo/AudioInfo;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v2

    if-eqz v2, :cond_a

    new-instance v13, Landroid/content/Intent;

    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-class v3, Lorg/telegram/messenger/MusicPlayerService;

    invoke-direct {v13, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v2, v13}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :goto_3
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/NotificationCenter;->audioPlayStateChanged:I

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v6}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    const/4 v2, 0x1

    goto/16 :goto_0

    :cond_8
    const/4 v14, 0x0

    goto/16 :goto_1

    :cond_9
    move-object/from16 v0, p1

    iget-object v2, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-static {v2}, Lorg/telegram/messenger/FileLoader;->getPathToMessage(Lorg/telegram/tgnet/TLRPC$Message;)Ljava/io/File;

    move-result-object v9

    goto :goto_2

    :cond_a
    new-instance v13, Landroid/content/Intent;

    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-class v3, Lorg/telegram/messenger/MusicPlayerService;

    invoke-direct {v13, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v2, v13}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    goto :goto_3

    :cond_b
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/messenger/MediaController;->downloadingCurrentMessage:Z

    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->isMusic()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/MediaController;->checkIsNextMusicFileDownloaded()V

    :cond_c
    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lorg/telegram/messenger/MediaController;->isOpusFile(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_12

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MediaController;->playlist:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MediaController;->shuffledPlaylist:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MediaController;->playerObjectSync:Ljava/lang/Object;

    move-object/from16 v18, v0

    monitor-enter v18

    const/4 v2, 0x3

    :try_start_0
    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/messenger/MediaController;->ignoreFirstProgress:I

    new-instance v17, Ljava/util/concurrent/Semaphore;

    const/4 v2, 0x0

    move-object/from16 v0, v17

    invoke-direct {v0, v2}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    const/4 v2, 0x1

    new-array v15, v2, [Ljava/lang/Boolean;

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MediaController;->fileDecodingQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v3, Lorg/telegram/messenger/MediaController$13;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v3, v0, v15, v9, v1}, Lorg/telegram/messenger/MediaController$13;-><init>(Lorg/telegram/messenger/MediaController;[Ljava/lang/Boolean;Ljava/io/File;Ljava/util/concurrent/Semaphore;)V

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    invoke-virtual/range {v17 .. v17}, Ljava/util/concurrent/Semaphore;->acquire()V

    const/4 v2, 0x0

    aget-object v2, v15, v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-nez v2, :cond_d

    const/4 v2, 0x0

    :try_start_1
    monitor-exit v18

    goto/16 :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v18
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    :cond_d
    :try_start_2
    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/MediaController;->getTotalPcmDuration()J

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Lorg/telegram/messenger/MediaController;->currentTotalPcmDuration:J

    new-instance v2, Landroid/media/AudioTrack;

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lorg/telegram/messenger/MediaController;->useFrontSpeaker:Z

    if-eqz v3, :cond_10

    const/4 v3, 0x0

    :goto_4
    const v4, 0xbb80

    const/4 v5, 0x4

    const/4 v6, 0x2

    move-object/from16 v0, p0

    iget v7, v0, Lorg/telegram/messenger/MediaController;->playerBufferSize:I

    const/4 v8, 0x1

    invoke-direct/range {v2 .. v8}, Landroid/media/AudioTrack;-><init>(IIIIII)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/messenger/MediaController;->audioTrackPlayer:Landroid/media/AudioTrack;

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MediaController;->audioTrackPlayer:Landroid/media/AudioTrack;

    const/high16 v3, 0x3f80

    const/high16 v4, 0x3f80

    invoke-virtual {v2, v3, v4}, Landroid/media/AudioTrack;->setStereoVolume(FF)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MediaController;->audioTrackPlayer:Landroid/media/AudioTrack;

    new-instance v3, Lorg/telegram/messenger/MediaController$14;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/telegram/messenger/MediaController$14;-><init>(Lorg/telegram/messenger/MediaController;)V

    invoke-virtual {v2, v3}, Landroid/media/AudioTrack;->setPlaybackPositionUpdateListener(Landroid/media/AudioTrack$OnPlaybackPositionUpdateListener;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MediaController;->audioTrackPlayer:Landroid/media/AudioTrack;

    invoke-virtual {v2}, Landroid/media/AudioTrack;->play()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :try_start_3
    monitor-exit v18
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_5
    invoke-direct/range {p0 .. p1}, Lorg/telegram/messenger/MediaController;->checkAudioFocus(Lorg/telegram/messenger/MessageObject;)V

    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/MediaController;->setPlayerVolume()V

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/messenger/MediaController;->isPaused:Z

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/messenger/MediaController;->lastProgress:I

    const-wide/16 v2, 0x0

    move-object/from16 v0, p0

    iput-wide v2, v0, Lorg/telegram/messenger/MediaController;->lastPlayPcm:J

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/messenger/MediaController;->raiseToSpeak:Z

    if-nez v2, :cond_e

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MediaController;->raiseChat:Lorg/telegram/ui/ChatActivity;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/MediaController;->startRaiseToEarSensors(Lorg/telegram/ui/ChatActivity;)V

    :cond_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lorg/telegram/messenger/MediaController;->startProgressTimer(Lorg/telegram/messenger/MessageObject;)V

    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/NotificationCenter;->audioDidStarted:I

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-virtual {v2, v3, v4}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MediaController;->audioPlayer:Landroid/media/MediaPlayer;

    if-eqz v2, :cond_17

    :try_start_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    iget v2, v2, Lorg/telegram/messenger/MessageObject;->audioProgress:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_f

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MediaController;->audioPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v2

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    iget v3, v3, Lorg/telegram/messenger/MessageObject;->audioProgress:F

    mul-float/2addr v2, v3

    float-to-int v0, v2

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MediaController;->audioPlayer:Landroid/media/MediaPlayer;

    move/from16 v0, v16

    invoke-virtual {v2, v0}, Landroid/media/MediaPlayer;->seekTo(I)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    :cond_f
    :goto_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->isMusic()Z

    move-result v2

    if-eqz v2, :cond_19

    new-instance v13, Landroid/content/Intent;

    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-class v3, Lorg/telegram/messenger/MusicPlayerService;

    invoke-direct {v13, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v2, v13}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :goto_7
    const/4 v2, 0x1

    goto/16 :goto_0

    :cond_10
    const/4 v3, 0x3

    goto/16 :goto_4

    :catch_0
    move-exception v10

    :try_start_5
    const-string/jumbo v2, "tmessages"

    invoke-static {v2, v10}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MediaController;->audioTrackPlayer:Landroid/media/AudioTrack;

    if-eqz v2, :cond_11

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MediaController;->audioTrackPlayer:Landroid/media/AudioTrack;

    invoke-virtual {v2}, Landroid/media/AudioTrack;->release()V

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/messenger/MediaController;->audioTrackPlayer:Landroid/media/AudioTrack;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/messenger/MediaController;->isPaused:Z

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/messenger/MediaController;->downloadingCurrentMessage:Z

    :cond_11
    const/4 v2, 0x0

    monitor-exit v18
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_0

    :cond_12
    :try_start_6
    new-instance v2, Landroid/media/MediaPlayer;

    invoke-direct {v2}, Landroid/media/MediaPlayer;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/messenger/MediaController;->audioPlayer:Landroid/media/MediaPlayer;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/MediaController;->audioPlayer:Landroid/media/MediaPlayer;

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/messenger/MediaController;->useFrontSpeaker:Z

    if-eqz v2, :cond_14

    const/4 v2, 0x0

    :goto_8
    invoke-virtual {v3, v2}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MediaController;->audioPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MediaController;->audioPlayer:Landroid/media/MediaPlayer;

    new-instance v3, Lorg/telegram/messenger/MediaController$15;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v3, v0, v1}, Lorg/telegram/messenger/MediaController$15;-><init>(Lorg/telegram/messenger/MediaController;Lorg/telegram/messenger/MessageObject;)V

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MediaController;->audioPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->prepare()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MediaController;->audioPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->start()V

    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->isVoice()Z

    move-result v2

    if-eqz v2, :cond_15

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/messenger/MediaController;->audioInfo:Lorg/telegram/messenger/audioinfo/AudioInfo;

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MediaController;->playlist:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MediaController;->shuffledPlaylist:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto/16 :goto_5

    :catch_1
    move-exception v10

    const-string/jumbo v2, "tmessages"

    invoke-static {v2, v10}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v3

    sget v4, Lorg/telegram/messenger/NotificationCenter;->audioPlayStateChanged:I

    const/4 v2, 0x1

    new-array v5, v2, [Ljava/lang/Object;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v2, :cond_16

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v2

    :goto_9
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v6

    invoke-virtual {v3, v4, v5}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MediaController;->audioPlayer:Landroid/media/MediaPlayer;

    if-eqz v2, :cond_13

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MediaController;->audioPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->release()V

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/messenger/MediaController;->audioPlayer:Landroid/media/MediaPlayer;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/messenger/MediaController;->isPaused:Z

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/messenger/MediaController;->downloadingCurrentMessage:Z

    :cond_13
    const/4 v2, 0x0

    goto/16 :goto_0

    :cond_14
    const/4 v2, 0x3

    goto/16 :goto_8

    :cond_15
    :try_start_7
    invoke-static {v9}, Lorg/telegram/messenger/audioinfo/AudioInfo;->getAudioInfo(Ljava/io/File;)Lorg/telegram/messenger/audioinfo/AudioInfo;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/messenger/MediaController;->audioInfo:Lorg/telegram/messenger/audioinfo/AudioInfo;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    goto/16 :goto_5

    :catch_2
    move-exception v10

    :try_start_8
    const-string/jumbo v2, "tmessages"

    invoke-static {v2, v10}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    goto/16 :goto_5

    :cond_16
    const/4 v2, 0x0

    goto :goto_9

    :catch_3
    move-exception v11

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    const/4 v3, 0x0

    iput v3, v2, Lorg/telegram/messenger/MessageObject;->audioProgress:F

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    const/4 v3, 0x0

    iput v3, v2, Lorg/telegram/messenger/MessageObject;->audioProgressSec:I

    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/NotificationCenter;->audioProgressDidChanged:I

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v6}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    const-string/jumbo v2, "tmessages"

    invoke-static {v2, v11}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_6

    :cond_17
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MediaController;->audioTrackPlayer:Landroid/media/AudioTrack;

    if-eqz v2, :cond_f

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    iget v2, v2, Lorg/telegram/messenger/MessageObject;->audioProgress:F

    const/high16 v3, 0x3f80

    cmpl-float v2, v2, v3

    if-nez v2, :cond_18

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    const/4 v3, 0x0

    iput v3, v2, Lorg/telegram/messenger/MessageObject;->audioProgress:F

    :cond_18
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MediaController;->fileDecodingQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v3, Lorg/telegram/messenger/MediaController$16;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/telegram/messenger/MediaController$16;-><init>(Lorg/telegram/messenger/MediaController;)V

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    goto/16 :goto_6

    :cond_19
    new-instance v13, Landroid/content/Intent;

    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-class v3, Lorg/telegram/messenger/MusicPlayerService;

    invoke-direct {v13, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v2, v13}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    goto/16 :goto_7
.end method

.method public playMessageAtIndex(I)V
    .locals 2

    iget v0, p0, Lorg/telegram/messenger/MediaController;->currentPlaylistNum:I

    if-ltz v0, :cond_0

    iget v0, p0, Lorg/telegram/messenger/MediaController;->currentPlaylistNum:I

    iget-object v1, p0, Lorg/telegram/messenger/MediaController;->playlist:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput p1, p0, Lorg/telegram/messenger/MediaController;->currentPlaylistNum:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/messenger/MediaController;->playMusicAgain:Z

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->playlist:Ljava/util/ArrayList;

    iget v1, p0, Lorg/telegram/messenger/MediaController;->currentPlaylistNum:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/MessageObject;

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/MediaController;->playAudio(Lorg/telegram/messenger/MessageObject;)Z

    goto :goto_0
.end method

.method public playNextMessage()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/telegram/messenger/MediaController;->playNextMessage(Z)V

    return-void
.end method

.method public playPreviousMessage()V
    .locals 3

    iget-boolean v1, p0, Lorg/telegram/messenger/MediaController;->shuffleMusic:Z

    if-eqz v1, :cond_2

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->shuffledPlaylist:Ljava/util/ArrayList;

    :goto_0
    iget v1, p0, Lorg/telegram/messenger/MediaController;->currentPlaylistNum:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/telegram/messenger/MediaController;->currentPlaylistNum:I

    iget v1, p0, Lorg/telegram/messenger/MediaController;->currentPlaylistNum:I

    if-gez v1, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/telegram/messenger/MediaController;->currentPlaylistNum:I

    :cond_0
    iget v1, p0, Lorg/telegram/messenger/MediaController;->currentPlaylistNum:I

    if-ltz v1, :cond_1

    iget v1, p0, Lorg/telegram/messenger/MediaController;->currentPlaylistNum:I

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v1, v2, :cond_3

    :cond_1
    :goto_1
    return-void

    :cond_2
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->playlist:Ljava/util/ArrayList;

    goto :goto_0

    :cond_3
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/telegram/messenger/MediaController;->playMusicAgain:Z

    iget v1, p0, Lorg/telegram/messenger/MediaController;->currentPlaylistNum:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/MessageObject;

    invoke-virtual {p0, v1}, Lorg/telegram/messenger/MediaController;->playAudio(Lorg/telegram/messenger/MessageObject;)Z

    goto :goto_1
.end method

.method protected processDownloadObjects(ILjava/util/ArrayList;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/DownloadObject;",
            ">;)V"
        }
    .end annotation

    const/4 v9, 0x0

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1

    :cond_0
    return-void

    :cond_1
    const/4 v5, 0x0

    const/4 v6, 0x1

    if-ne p1, v6, :cond_4

    iget-object v5, p0, Lorg/telegram/messenger/MediaController;->photoDownloadQueue:Ljava/util/ArrayList;

    :cond_2
    :goto_0
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v0, v6, :cond_0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/DownloadObject;

    iget-object v6, v3, Lorg/telegram/messenger/DownloadObject;->object:Lorg/telegram/tgnet/TLObject;

    instance-of v6, v6, Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v6, :cond_9

    iget-object v2, v3, Lorg/telegram/messenger/DownloadObject;->object:Lorg/telegram/tgnet/TLObject;

    check-cast v2, Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v2}, Lorg/telegram/messenger/FileLoader;->getAttachFileName(Lorg/telegram/tgnet/TLObject;)Ljava/lang/String;

    move-result-object v4

    :goto_2
    iget-object v6, p0, Lorg/telegram/messenger/MediaController;->downloadQueueKeys:Ljava/util/HashMap;

    invoke-virtual {v6, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    :cond_3
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    const/4 v6, 0x2

    if-ne p1, v6, :cond_5

    iget-object v5, p0, Lorg/telegram/messenger/MediaController;->audioDownloadQueue:Ljava/util/ArrayList;

    goto :goto_0

    :cond_5
    const/4 v6, 0x4

    if-ne p1, v6, :cond_6

    iget-object v5, p0, Lorg/telegram/messenger/MediaController;->videoDownloadQueue:Ljava/util/ArrayList;

    goto :goto_0

    :cond_6
    const/16 v6, 0x8

    if-ne p1, v6, :cond_7

    iget-object v5, p0, Lorg/telegram/messenger/MediaController;->documentDownloadQueue:Ljava/util/ArrayList;

    goto :goto_0

    :cond_7
    const/16 v6, 0x10

    if-ne p1, v6, :cond_8

    iget-object v5, p0, Lorg/telegram/messenger/MediaController;->musicDownloadQueue:Ljava/util/ArrayList;

    goto :goto_0

    :cond_8
    const/16 v6, 0x20

    if-ne p1, v6, :cond_2

    iget-object v5, p0, Lorg/telegram/messenger/MediaController;->gifDownloadQueue:Ljava/util/ArrayList;

    goto :goto_0

    :cond_9
    iget-object v6, v3, Lorg/telegram/messenger/DownloadObject;->object:Lorg/telegram/tgnet/TLObject;

    invoke-static {v6}, Lorg/telegram/messenger/FileLoader;->getAttachFileName(Lorg/telegram/tgnet/TLObject;)Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    :cond_a
    const/4 v1, 0x1

    iget-object v6, v3, Lorg/telegram/messenger/DownloadObject;->object:Lorg/telegram/tgnet/TLObject;

    instance-of v6, v6, Lorg/telegram/tgnet/TLRPC$PhotoSize;

    if-eqz v6, :cond_b

    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v7

    iget-object v6, v3, Lorg/telegram/messenger/DownloadObject;->object:Lorg/telegram/tgnet/TLObject;

    check-cast v6, Lorg/telegram/tgnet/TLRPC$PhotoSize;

    const/4 v8, 0x0

    invoke-virtual {v7, v6, v8, v9}, Lorg/telegram/messenger/FileLoader;->loadFile(Lorg/telegram/tgnet/TLRPC$PhotoSize;Ljava/lang/String;Z)V

    :goto_4
    if-eqz v1, :cond_3

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v6, p0, Lorg/telegram/messenger/MediaController;->downloadQueueKeys:Ljava/util/HashMap;

    invoke-virtual {v6, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_b
    iget-object v6, v3, Lorg/telegram/messenger/DownloadObject;->object:Lorg/telegram/tgnet/TLObject;

    instance-of v6, v6, Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v6, :cond_c

    iget-object v2, v3, Lorg/telegram/messenger/DownloadObject;->object:Lorg/telegram/tgnet/TLObject;

    check-cast v2, Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v6

    invoke-virtual {v6, v2, v9, v9}, Lorg/telegram/messenger/FileLoader;->loadFile(Lorg/telegram/tgnet/TLRPC$Document;ZZ)V

    goto :goto_4

    :cond_c
    const/4 v1, 0x0

    goto :goto_4
.end method

.method public processMediaObserver(Landroid/net/Uri;)V
    .locals 22

    :try_start_0
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getRealScreenSize()Landroid/graphics/Point;

    move-result-object v19

    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/MediaController;->mediaProjections:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "date_added DESC LIMIT 1"

    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    if-eqz v10, :cond_c

    :cond_0
    :goto_0
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_b

    const-string/jumbo v21, ""

    const/4 v2, 0x0

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    const/4 v2, 0x1

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    const/4 v2, 0x2

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v2, 0x3

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    const/4 v2, 0x4

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    const/16 v17, 0x0

    const/16 v16, 0x0

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x10

    if-lt v2, v3, :cond_1

    const/4 v2, 0x5

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    const/4 v2, 0x6

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    :cond_1
    if-eqz v11, :cond_2

    invoke-virtual {v11}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "screenshot"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    :cond_2
    if-eqz v14, :cond_3

    invoke-virtual {v14}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "screenshot"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    :cond_3
    if-eqz v8, :cond_4

    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "screenshot"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    :cond_4
    if-eqz v20, :cond_0

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "screenshot"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    if-eqz v2, :cond_0

    :cond_5
    if-eqz v17, :cond_6

    if-nez v16, :cond_7

    :cond_6
    :try_start_1
    new-instance v9, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v9}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v2, 0x1

    iput-boolean v2, v9, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-static {v11, v9}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    iget v0, v9, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    move/from16 v17, v0

    iget v0, v9, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    move/from16 v16, v0

    :cond_7
    if-lez v17, :cond_9

    if-lez v16, :cond_9

    move-object/from16 v0, v19

    iget v2, v0, Landroid/graphics/Point;->x:I

    move/from16 v0, v17

    if-ne v0, v2, :cond_8

    move-object/from16 v0, v19

    iget v2, v0, Landroid/graphics/Point;->y:I

    move/from16 v0, v16

    if-eq v0, v2, :cond_9

    :cond_8
    move-object/from16 v0, v19

    iget v2, v0, Landroid/graphics/Point;->x:I

    move/from16 v0, v16

    if-ne v0, v2, :cond_0

    move-object/from16 v0, v19

    iget v2, v0, Landroid/graphics/Point;->y:I

    move/from16 v0, v17

    if-ne v0, v2, :cond_0

    :cond_9
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v15

    :try_start_2
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v15

    const-string/jumbo v2, "tmessages"

    invoke-static {v2, v15}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_a
    :goto_1
    return-void

    :cond_b
    :try_start_3
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_c
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_a

    new-instance v2, Lorg/telegram/messenger/MediaController$6;

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v2, v0, v1}, Lorg/telegram/messenger/MediaController$6;-><init>(Lorg/telegram/messenger/MediaController;Ljava/util/ArrayList;)V

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1
.end method

.method public removeLoadingFileObserver(Lorg/telegram/messenger/MediaController$FileDownloadProgressListener;)V
    .locals 6

    iget-boolean v4, p0, Lorg/telegram/messenger/MediaController;->listenerInProgress:Z

    if-eqz v4, :cond_1

    iget-object v4, p0, Lorg/telegram/messenger/MediaController;->deleteLaterArray:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v4, p0, Lorg/telegram/messenger/MediaController;->observersByTag:Ljava/util/HashMap;

    invoke-interface {p1}, Lorg/telegram/messenger/MediaController$FileDownloadProgressListener;->getObserverTag()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v4, p0, Lorg/telegram/messenger/MediaController;->loadingFileObservers:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    if-eqz v1, :cond_5

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_4

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    if-ne v4, p1, :cond_3

    :cond_2
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v0, v0, -0x1

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lorg/telegram/messenger/MediaController;->loadingFileObservers:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    iget-object v4, p0, Lorg/telegram/messenger/MediaController;->observersByTag:Ljava/util/HashMap;

    invoke-interface {p1}, Lorg/telegram/messenger/MediaController$FileDownloadProgressListener;->getObserverTag()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public resumeAudio(Lorg/telegram/messenger/MessageObject;)Z
    .locals 8

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v3, p0, Lorg/telegram/messenger/MediaController;->audioTrackPlayer:Landroid/media/AudioTrack;

    if-nez v3, :cond_0

    iget-object v3, p0, Lorg/telegram/messenger/MediaController;->audioPlayer:Landroid/media/MediaPlayer;

    if-eqz v3, :cond_1

    :cond_0
    if-eqz p1, :cond_1

    iget-object v3, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v3

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v4

    if-eq v3, v4, :cond_2

    :cond_1
    :goto_0
    return v1

    :cond_2
    :try_start_0
    invoke-direct {p0, p1}, Lorg/telegram/messenger/MediaController;->startProgressTimer(Lorg/telegram/messenger/MessageObject;)V

    iget-object v3, p0, Lorg/telegram/messenger/MediaController;->audioPlayer:Landroid/media/MediaPlayer;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lorg/telegram/messenger/MediaController;->audioPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->start()V

    :cond_3
    :goto_1
    invoke-direct {p0, p1}, Lorg/telegram/messenger/MediaController;->checkAudioFocus(Lorg/telegram/messenger/MessageObject;)V

    const/4 v3, 0x0

    iput-boolean v3, p0, Lorg/telegram/messenger/MediaController;->isPaused:Z

    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v3

    sget v4, Lorg/telegram/messenger/NotificationCenter;->audioPlayStateChanged:I

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v7}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    move v1, v2

    goto :goto_0

    :cond_4
    iget-object v3, p0, Lorg/telegram/messenger/MediaController;->audioTrackPlayer:Landroid/media/AudioTrack;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lorg/telegram/messenger/MediaController;->audioTrackPlayer:Landroid/media/AudioTrack;

    invoke-virtual {v3}, Landroid/media/AudioTrack;->play()V

    invoke-direct {p0}, Lorg/telegram/messenger/MediaController;->checkPlayerQueue()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string/jumbo v2, "tmessages"

    invoke-static {v2, v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public scheduleVideoConvert(Lorg/telegram/messenger/MessageObject;)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->videoConvertQueue:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->videoConvertQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lorg/telegram/messenger/MediaController;->startVideoConvertFromQueue()V

    :cond_0
    return-void
.end method

.method public seekToProgress(Lorg/telegram/messenger/MessageObject;F)Z
    .locals 5

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/telegram/messenger/MediaController;->audioTrackPlayer:Landroid/media/AudioTrack;

    if-nez v3, :cond_0

    iget-object v3, p0, Lorg/telegram/messenger/MediaController;->audioPlayer:Landroid/media/MediaPlayer;

    if-eqz v3, :cond_1

    :cond_0
    if-eqz p1, :cond_1

    iget-object v3, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v3

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v4

    if-eq v3, v4, :cond_2

    :cond_1
    :goto_0
    return v2

    :cond_2
    :try_start_0
    iget-object v3, p0, Lorg/telegram/messenger/MediaController;->audioPlayer:Landroid/media/MediaPlayer;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lorg/telegram/messenger/MediaController;->audioPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, p2

    float-to-int v1, v3

    iget-object v3, p0, Lorg/telegram/messenger/MediaController;->audioPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v3, v1}, Landroid/media/MediaPlayer;->seekTo(I)V

    iput v1, p0, Lorg/telegram/messenger/MediaController;->lastProgress:I

    :cond_3
    :goto_1
    const/4 v2, 0x1

    goto :goto_0

    :cond_4
    iget-object v3, p0, Lorg/telegram/messenger/MediaController;->audioTrackPlayer:Landroid/media/AudioTrack;

    if-eqz v3, :cond_3

    invoke-direct {p0, p2}, Lorg/telegram/messenger/MediaController;->seekOpusPlayer(F)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string/jumbo v3, "tmessages"

    invoke-static {v3, v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public setAllowStartRecord(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/messenger/MediaController;->allowStartRecord:Z

    return-void
.end method

.method public setInputFieldHasText(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/messenger/MediaController;->inputFieldHasText:Z

    return-void
.end method

.method public setLastEncryptedChatParams(JJLorg/telegram/tgnet/TLRPC$EncryptedChat;Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Lorg/telegram/tgnet/TLRPC$EncryptedChat;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    iput-wide p1, p0, Lorg/telegram/messenger/MediaController;->lastSecretChatEnterTime:J

    iput-wide p3, p0, Lorg/telegram/messenger/MediaController;->lastSecretChatLeaveTime:J

    iput-object p5, p0, Lorg/telegram/messenger/MediaController;->lastSecretChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    iput-object p6, p0, Lorg/telegram/messenger/MediaController;->lastSecretChatVisibleMessages:Ljava/util/ArrayList;

    return-void
.end method

.method public setPlaylist(Ljava/util/ArrayList;Lorg/telegram/messenger/MessageObject;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/MessageObject;",
            ">;",
            "Lorg/telegram/messenger/MessageObject;",
            ")Z"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lorg/telegram/messenger/MediaController;->setPlaylist(Ljava/util/ArrayList;Lorg/telegram/messenger/MessageObject;Z)Z

    move-result v0

    return v0
.end method

.method public setPlaylist(Ljava/util/ArrayList;Lorg/telegram/messenger/MessageObject;Z)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/MessageObject;",
            ">;",
            "Lorg/telegram/messenger/MessageObject;",
            "Z)Z"
        }
    .end annotation

    const/4 v3, 0x1

    const/4 v4, 0x0

    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    if-ne v2, p2, :cond_0

    invoke-virtual {p0, p2}, Lorg/telegram/messenger/MediaController;->playAudio(Lorg/telegram/messenger/MessageObject;)Z

    move-result v2

    :goto_0
    return v2

    :cond_0
    if-nez p3, :cond_2

    move v2, v3

    :goto_1
    iput-boolean v2, p0, Lorg/telegram/messenger/MediaController;->forceLoopCurrentPlaylist:Z

    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->playlist:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    :goto_2
    iput-boolean v3, p0, Lorg/telegram/messenger/MediaController;->playMusicAgain:Z

    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->playlist:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    :goto_3
    if-ltz v0, :cond_4

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->isMusic()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->playlist:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    :cond_2
    move v2, v4

    goto :goto_1

    :cond_3
    move v3, v4

    goto :goto_2

    :cond_4
    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->playlist:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    iput v2, p0, Lorg/telegram/messenger/MediaController;->currentPlaylistNum:I

    iget v2, p0, Lorg/telegram/messenger/MediaController;->currentPlaylistNum:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_5

    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->playlist:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->shuffledPlaylist:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->playlist:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    iput v2, p0, Lorg/telegram/messenger/MediaController;->currentPlaylistNum:I

    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->playlist:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    invoke-virtual {p2}, Lorg/telegram/messenger/MessageObject;->isMusic()Z

    move-result v2

    if-eqz v2, :cond_7

    iget-boolean v2, p0, Lorg/telegram/messenger/MediaController;->shuffleMusic:Z

    if-eqz v2, :cond_6

    invoke-direct {p0}, Lorg/telegram/messenger/MediaController;->buildShuffledPlayList()V

    iput v4, p0, Lorg/telegram/messenger/MediaController;->currentPlaylistNum:I

    :cond_6
    if-eqz p3, :cond_7

    invoke-virtual {p2}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v6

    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->playlist:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v2

    invoke-static {v6, v7, v2}, Lorg/telegram/messenger/query/SharedMediaQuery;->loadMusic(JI)V

    :cond_7
    invoke-virtual {p0, p2}, Lorg/telegram/messenger/MediaController;->playAudio(Lorg/telegram/messenger/MessageObject;)Z

    move-result v2

    goto/16 :goto_0
.end method

.method public setVoiceMessagesPlaylist(Ljava/util/ArrayList;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/MessageObject;",
            ">;Z)V"
        }
    .end annotation

    iput-object p1, p0, Lorg/telegram/messenger/MediaController;->voiceMessagesPlaylist:Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->voiceMessagesPlaylist:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    iput-boolean p2, p0, Lorg/telegram/messenger/MediaController;->voiceMessagesPlaylistUnread:Z

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lorg/telegram/messenger/MediaController;->voiceMessagesPlaylistMap:Ljava/util/HashMap;

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->voiceMessagesPlaylist:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->voiceMessagesPlaylist:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/MessageObject;

    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->voiceMessagesPlaylistMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public startMediaObserver()V
    .locals 5

    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationHandler:Landroid/os/Handler;

    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->stopMediaObserverRunnable:Lorg/telegram/messenger/MediaController$StopMediaObserverRunnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget v1, p0, Lorg/telegram/messenger/MediaController;->startObserverToken:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/telegram/messenger/MediaController;->startObserverToken:I

    :try_start_0
    iget-object v1, p0, Lorg/telegram/messenger/MediaController;->internalObserver:Lorg/telegram/messenger/MediaController$InternalObserver;

    if-nez v1, :cond_0

    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    new-instance v4, Lorg/telegram/messenger/MediaController$ExternalObserver;

    invoke-direct {v4, p0}, Lorg/telegram/messenger/MediaController$ExternalObserver;-><init>(Lorg/telegram/messenger/MediaController;)V

    iput-object v4, p0, Lorg/telegram/messenger/MediaController;->externalObserver:Lorg/telegram/messenger/MediaController$ExternalObserver;

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    :try_start_1
    iget-object v1, p0, Lorg/telegram/messenger/MediaController;->externalObserver:Lorg/telegram/messenger/MediaController$ExternalObserver;

    if-nez v1, :cond_1

    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/MediaStore$Images$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    new-instance v4, Lorg/telegram/messenger/MediaController$InternalObserver;

    invoke-direct {v4, p0}, Lorg/telegram/messenger/MediaController$InternalObserver;-><init>(Lorg/telegram/messenger/MediaController;)V

    iput-object v4, p0, Lorg/telegram/messenger/MediaController;->internalObserver:Lorg/telegram/messenger/MediaController$InternalObserver;

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_1
    :goto_1
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "tmessages"

    invoke-static {v1, v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception v0

    const-string/jumbo v1, "tmessages"

    invoke-static {v1, v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public startRaiseToEarSensors(Lorg/telegram/ui/ChatActivity;)V
    .locals 7

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    if-eqz p1, :cond_1

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->accelerometerSensor:Landroid/hardware/Sensor;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->gravitySensor:Landroid/hardware/Sensor;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->linearAcceleration:[F

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->proximitySensor:Landroid/hardware/Sensor;

    if-nez v0, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    iput-object p1, p0, Lorg/telegram/messenger/MediaController;->raiseChat:Lorg/telegram/ui/ChatActivity;

    iget-boolean v0, p0, Lorg/telegram/messenger/MediaController;->raiseToSpeak:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->isVoice()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_3
    iget-boolean v0, p0, Lorg/telegram/messenger/MediaController;->sensorsStarted:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->gravity:[F

    iget-object v1, p0, Lorg/telegram/messenger/MediaController;->gravity:[F

    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->gravity:[F

    aput v4, v2, v6

    aput v4, v1, v5

    aput v4, v0, v3

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->linearAcceleration:[F

    iget-object v1, p0, Lorg/telegram/messenger/MediaController;->linearAcceleration:[F

    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->linearAcceleration:[F

    aput v4, v2, v6

    aput v4, v1, v5

    aput v4, v0, v3

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->gravityFast:[F

    iget-object v1, p0, Lorg/telegram/messenger/MediaController;->gravityFast:[F

    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->gravityFast:[F

    aput v4, v2, v6

    aput v4, v1, v5

    aput v4, v0, v3

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/telegram/messenger/MediaController;->lastTimestamp:J

    iput v4, p0, Lorg/telegram/messenger/MediaController;->previousAccValue:F

    iput v3, p0, Lorg/telegram/messenger/MediaController;->raisedToTop:I

    iput v3, p0, Lorg/telegram/messenger/MediaController;->countLess:I

    iput v3, p0, Lorg/telegram/messenger/MediaController;->raisedToBack:I

    sget-object v0, Lorg/telegram/messenger/Utilities;->globalQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/MediaController$10;

    invoke-direct {v1, p0}, Lorg/telegram/messenger/MediaController$10;-><init>(Lorg/telegram/messenger/MediaController;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    iput-boolean v5, p0, Lorg/telegram/messenger/MediaController;->sensorsStarted:Z

    goto :goto_0
.end method

.method public startRecording(JLorg/telegram/messenger/MessageObject;)V
    .locals 9

    const-wide/16 v4, 0x32

    const/4 v1, 0x0

    iget-object v3, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {p0, v3}, Lorg/telegram/messenger/MediaController;->isPlayingAudio(Lorg/telegram/messenger/MessageObject;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lorg/telegram/messenger/MediaController;->isAudioPaused()Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v1, 0x1

    iget-object v3, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {p0, v3}, Lorg/telegram/messenger/MediaController;->pauseAudio(Lorg/telegram/messenger/MessageObject;)Z

    :cond_0
    :try_start_0
    sget-object v3, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v6, "vibrator"

    invoke-virtual {v3, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Vibrator;

    const-wide/16 v6, 0x32

    invoke-virtual {v2, v6, v7}, Landroid/os/Vibrator;->vibrate(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v3, p0, Lorg/telegram/messenger/MediaController;->recordQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v6, Lorg/telegram/messenger/MediaController$17;

    invoke-direct {v6, p0, p1, p2, p3}, Lorg/telegram/messenger/MediaController$17;-><init>(Lorg/telegram/messenger/MediaController;JLorg/telegram/messenger/MessageObject;)V

    iput-object v6, p0, Lorg/telegram/messenger/MediaController;->recordStartRunnable:Ljava/lang/Runnable;

    if-eqz v1, :cond_1

    const-wide/16 v4, 0x1f4

    :cond_1
    invoke-virtual {v3, v6, v4, v5}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;J)V

    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v3, "tmessages"

    invoke-static {v3, v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public startRecordingIfFromSpeaker()V
    .locals 4

    const/4 v3, 0x1

    iget-boolean v0, p0, Lorg/telegram/messenger/MediaController;->useFrontSpeaker:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->raiseChat:Lorg/telegram/ui/ChatActivity;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/messenger/MediaController;->allowStartRecord:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput-boolean v3, p0, Lorg/telegram/messenger/MediaController;->raiseToEarRecord:Z

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->raiseChat:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ChatActivity;->getDialogId()J

    move-result-wide v0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lorg/telegram/messenger/MediaController;->startRecording(JLorg/telegram/messenger/MessageObject;)V

    iput-boolean v3, p0, Lorg/telegram/messenger/MediaController;->ignoreOnPause:Z

    goto :goto_0
.end method

.method public stopAudio()V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x0

    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->audioTrackPlayer:Landroid/media/AudioTrack;

    if-nez v2, :cond_0

    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->audioPlayer:Landroid/media/MediaPlayer;

    if-eqz v2, :cond_1

    :cond_0
    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    if-nez v2, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    :try_start_0
    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->audioPlayer:Landroid/media/MediaPlayer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v2, :cond_5

    :try_start_1
    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->audioPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->reset()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    :try_start_2
    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->audioPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->stop()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :cond_3
    :goto_2
    :try_start_3
    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->audioPlayer:Landroid/media/MediaPlayer;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->audioPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->release()V

    const/4 v2, 0x0

    iput-object v2, p0, Lorg/telegram/messenger/MediaController;->audioPlayer:Landroid/media/MediaPlayer;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    :cond_4
    :goto_3
    invoke-direct {p0}, Lorg/telegram/messenger/MediaController;->stopProgressTimer()V

    iput-object v4, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    iput-boolean v5, p0, Lorg/telegram/messenger/MediaController;->downloadingCurrentMessage:Z

    iput-boolean v5, p0, Lorg/telegram/messenger/MediaController;->isPaused:Z

    new-instance v1, Landroid/content/Intent;

    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-class v3, Lorg/telegram/messenger/MusicPlayerService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_4
    const-string/jumbo v2, "tmessages"

    invoke-static {v2, v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    const-string/jumbo v2, "tmessages"

    invoke-static {v2, v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_5
    :try_start_5
    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->audioTrackPlayer:Landroid/media/AudioTrack;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->audioTrackPlayer:Landroid/media/AudioTrack;

    invoke-virtual {v2}, Landroid/media/AudioTrack;->pause()V

    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->audioTrackPlayer:Landroid/media/AudioTrack;

    invoke-virtual {v2}, Landroid/media/AudioTrack;->flush()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_2

    :cond_6
    :try_start_6
    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->audioTrackPlayer:Landroid/media/AudioTrack;

    if-eqz v2, :cond_4

    iget-object v3, p0, Lorg/telegram/messenger/MediaController;->playerObjectSync:Ljava/lang/Object;

    monitor-enter v3
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    :try_start_7
    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->audioTrackPlayer:Landroid/media/AudioTrack;

    invoke-virtual {v2}, Landroid/media/AudioTrack;->release()V

    const/4 v2, 0x0

    iput-object v2, p0, Lorg/telegram/messenger/MediaController;->audioTrackPlayer:Landroid/media/AudioTrack;

    monitor-exit v3

    goto :goto_3

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :try_start_8
    throw v2
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    :catch_2
    move-exception v0

    const-string/jumbo v2, "tmessages"

    invoke-static {v2, v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3
.end method

.method public stopMediaObserver()V
    .locals 4

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->stopMediaObserverRunnable:Lorg/telegram/messenger/MediaController$StopMediaObserverRunnable;

    if-nez v0, :cond_0

    new-instance v0, Lorg/telegram/messenger/MediaController$StopMediaObserverRunnable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/telegram/messenger/MediaController$StopMediaObserverRunnable;-><init>(Lorg/telegram/messenger/MediaController;Lorg/telegram/messenger/MediaController$1;)V

    iput-object v0, p0, Lorg/telegram/messenger/MediaController;->stopMediaObserverRunnable:Lorg/telegram/messenger/MediaController$StopMediaObserverRunnable;

    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->stopMediaObserverRunnable:Lorg/telegram/messenger/MediaController$StopMediaObserverRunnable;

    iget v1, p0, Lorg/telegram/messenger/MediaController;->startObserverToken:I

    iput v1, v0, Lorg/telegram/messenger/MediaController$StopMediaObserverRunnable;->currentObserverToken:I

    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationHandler:Landroid/os/Handler;

    iget-object v1, p0, Lorg/telegram/messenger/MediaController;->stopMediaObserverRunnable:Lorg/telegram/messenger/MediaController$StopMediaObserverRunnable;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public stopRaiseToEarSensors(Lorg/telegram/ui/ChatActivity;)V
    .locals 2

    const/4 v1, 0x0

    iget-boolean v0, p0, Lorg/telegram/messenger/MediaController;->ignoreOnPause:Z

    if-eqz v0, :cond_1

    iput-boolean v1, p0, Lorg/telegram/messenger/MediaController;->ignoreOnPause:Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lorg/telegram/messenger/MediaController;->sensorsStarted:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/messenger/MediaController;->ignoreOnPause:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->accelerometerSensor:Landroid/hardware/Sensor;

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->gravitySensor:Landroid/hardware/Sensor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->linearAcceleration:[F

    if-eqz v0, :cond_0

    :cond_2
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->proximitySensor:Landroid/hardware/Sensor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->raiseChat:Lorg/telegram/ui/ChatActivity;

    if-ne v0, p1, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/messenger/MediaController;->raiseChat:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p0, v1}, Lorg/telegram/messenger/MediaController;->stopRecording(I)V

    iput-boolean v1, p0, Lorg/telegram/messenger/MediaController;->sensorsStarted:Z

    iput-boolean v1, p0, Lorg/telegram/messenger/MediaController;->accelerometerVertical:Z

    iput-boolean v1, p0, Lorg/telegram/messenger/MediaController;->proximityTouched:Z

    iput-boolean v1, p0, Lorg/telegram/messenger/MediaController;->raiseToEarRecord:Z

    iput-boolean v1, p0, Lorg/telegram/messenger/MediaController;->useFrontSpeaker:Z

    sget-object v0, Lorg/telegram/messenger/Utilities;->globalQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/MediaController$11;

    invoke-direct {v1, p0}, Lorg/telegram/messenger/MediaController$11;-><init>(Lorg/telegram/messenger/MediaController;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    iget-boolean v0, p0, Lorg/telegram/messenger/MediaController;->proximityHasDifferentValues:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->proximityWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->proximityWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->proximityWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_0
.end method

.method public stopRecording(I)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->recordStartRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->recordQueue:Lorg/telegram/messenger/DispatchQueue;

    iget-object v1, p0, Lorg/telegram/messenger/MediaController;->recordStartRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->cancelRunnable(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/messenger/MediaController;->recordStartRunnable:Ljava/lang/Runnable;

    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->recordQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/MediaController$20;

    invoke-direct {v1, p0, p1}, Lorg/telegram/messenger/MediaController$20;-><init>(Lorg/telegram/messenger/MediaController;I)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    return-void
.end method

.method public toggleAutoplayGifs()V
    .locals 5

    const/4 v3, 0x0

    iget-boolean v2, p0, Lorg/telegram/messenger/MediaController;->autoplayGifs:Z

    if-nez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    iput-boolean v2, p0, Lorg/telegram/messenger/MediaController;->autoplayGifs:Z

    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v4, "mainconfig"

    invoke-virtual {v2, v4, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v2, "autoplay_gif"

    iget-boolean v3, p0, Lorg/telegram/messenger/MediaController;->autoplayGifs:Z

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void

    :cond_0
    move v2, v3

    goto :goto_0
.end method

.method public toggleCustomTabs()V
    .locals 5

    const/4 v3, 0x0

    iget-boolean v2, p0, Lorg/telegram/messenger/MediaController;->customTabs:Z

    if-nez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    iput-boolean v2, p0, Lorg/telegram/messenger/MediaController;->customTabs:Z

    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v4, "mainconfig"

    invoke-virtual {v2, v4, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v2, "custom_tabs"

    iget-boolean v3, p0, Lorg/telegram/messenger/MediaController;->customTabs:Z

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void

    :cond_0
    move v2, v3

    goto :goto_0
.end method

.method public toggleDirectShare()V
    .locals 5

    const/4 v3, 0x0

    iget-boolean v2, p0, Lorg/telegram/messenger/MediaController;->directShare:Z

    if-nez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    iput-boolean v2, p0, Lorg/telegram/messenger/MediaController;->directShare:Z

    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v4, "mainconfig"

    invoke-virtual {v2, v4, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v2, "direct_share"

    iget-boolean v3, p0, Lorg/telegram/messenger/MediaController;->directShare:Z

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void

    :cond_0
    move v2, v3

    goto :goto_0
.end method

.method public toggleRepeatMode()V
    .locals 5

    const/4 v4, 0x0

    iget v2, p0, Lorg/telegram/messenger/MediaController;->repeatMode:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/telegram/messenger/MediaController;->repeatMode:I

    iget v2, p0, Lorg/telegram/messenger/MediaController;->repeatMode:I

    const/4 v3, 0x2

    if-le v2, v3, :cond_0

    iput v4, p0, Lorg/telegram/messenger/MediaController;->repeatMode:I

    :cond_0
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v3, "mainconfig"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v2, "repeatMode"

    iget v3, p0, Lorg/telegram/messenger/MediaController;->repeatMode:I

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public toggleSaveToGallery()V
    .locals 5

    const/4 v3, 0x0

    iget-boolean v2, p0, Lorg/telegram/messenger/MediaController;->saveToGallery:Z

    if-nez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    iput-boolean v2, p0, Lorg/telegram/messenger/MediaController;->saveToGallery:Z

    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v4, "mainconfig"

    invoke-virtual {v2, v4, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v2, "save_gallery"

    iget-boolean v3, p0, Lorg/telegram/messenger/MediaController;->saveToGallery:Z

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-virtual {p0}, Lorg/telegram/messenger/MediaController;->checkSaveToGalleryFiles()V

    return-void

    :cond_0
    move v2, v3

    goto :goto_0
.end method

.method public toggleShuffleMusic()V
    .locals 6

    const/4 v3, 0x1

    const/4 v4, 0x0

    iget-boolean v2, p0, Lorg/telegram/messenger/MediaController;->shuffleMusic:Z

    if-nez v2, :cond_1

    move v2, v3

    :goto_0
    iput-boolean v2, p0, Lorg/telegram/messenger/MediaController;->shuffleMusic:Z

    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v5, "mainconfig"

    invoke-virtual {v2, v5, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v2, "shuffleMusic"

    iget-boolean v5, p0, Lorg/telegram/messenger/MediaController;->shuffleMusic:Z

    invoke-interface {v0, v2, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-boolean v2, p0, Lorg/telegram/messenger/MediaController;->shuffleMusic:Z

    if-eqz v2, :cond_2

    invoke-direct {p0}, Lorg/telegram/messenger/MediaController;->buildShuffledPlayList()V

    iput v4, p0, Lorg/telegram/messenger/MediaController;->currentPlaylistNum:I

    :cond_0
    :goto_1
    return-void

    :cond_1
    move v2, v4

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->playlist:Ljava/util/ArrayList;

    iget-object v4, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    iput v2, p0, Lorg/telegram/messenger/MediaController;->currentPlaylistNum:I

    iget v2, p0, Lorg/telegram/messenger/MediaController;->currentPlaylistNum:I

    const/4 v4, -0x1

    if-ne v2, v4, :cond_0

    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->playlist:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->shuffledPlaylist:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {p0, v3, v3}, Lorg/telegram/messenger/MediaController;->cleanupPlayer(ZZ)V

    goto :goto_1
.end method

.method public toogleRaiseToSpeak()V
    .locals 5

    const/4 v3, 0x0

    iget-boolean v2, p0, Lorg/telegram/messenger/MediaController;->raiseToSpeak:Z

    if-nez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    iput-boolean v2, p0, Lorg/telegram/messenger/MediaController;->raiseToSpeak:Z

    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v4, "mainconfig"

    invoke-virtual {v2, v4, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v2, "raise_to_speak"

    iget-boolean v3, p0, Lorg/telegram/messenger/MediaController;->raiseToSpeak:Z

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void

    :cond_0
    move v2, v3

    goto :goto_0
.end method
